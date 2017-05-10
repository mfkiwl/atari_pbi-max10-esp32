-------------------------------------------------------------------------------------------------------------------------------
--
-- Atari 8-bit PBI Bus Bridge
-- SPI slave to Dual Port RAM Interface
-- allows a SPI master to read from and write to two dual port RAM windows
-- the Atari PBI controls one side of these dual port RAMs to write/read data, and uses a few control signals tied to Atari
-- port registers to control the process
--
-- originally based on a SPI slave example by Scott Larson, https://eewiki.net/pages/viewpage.action?pageId=7569477
-- heavily modified for dual port RAM interface and protocol changes by Steve Richardson (tangentaudio@gmail.com)
--
--
-- 2017MAY01 - Epoch
-- 2017MAY04 - start of heavy reworking of original example
--
-------------------------------------------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY spi_dpram IS
	GENERIC (
		cpol				: STD_LOGIC := '0';  -- spi clock polarity mode
		cpha				: STD_LOGIC := '0';  -- spi clock phase mode
		spi_hdr_bits	: INTEGER := 40;		-- count of bits in the SPI header
		RAM_DATA_WIDTH	: INTEGER := 8;		-- data bus width of the dual port RAM
		RAM_ADDR_WIDTH : INTEGER := 8			-- address bus width of the dual port RAM
	);
		
	PORT(
		p_clk				: IN		STD_LOGIC;			-- parallel memory interface, clock
		p_rw				: IN		STD_LOGIC;			-- parallel memory interface, read/write
		
		p_master_en		: IN		STD_LOGIC;			-- parallel memory interface, master enable
		p_master_addr	: IN		STD_LOGIC_VECTOR(RAM_ADDR_WIDTH-1 DOWNTO 0);	-- parallel memory interface, master address
		p_master_din	: IN		STD_LOGIC_VECTOR(7 downto 0);					-- parallel memory interface, master data
		p_master_dout	: OUT		STD_LOGIC_VECTOR(7 downto 0);					-- parallel memory interface, master data
		
		p_slave_en		: IN		STD_LOGIC;			-- parallel memory interface, slave enable
		p_slave_addr	: IN		STD_LOGIC_VECTOR(RAM_ADDR_WIDTH-1 DOWNTO 0);	-- parallel memory interface,  slave address
		p_slave_din		: IN		STD_LOGIC_VECTOR(7 downto 0);					-- parallel memory interface, slave data
		p_slave_dout	: OUT		STD_LOGIC_VECTOR(7 downto 0) := (OTHERS => '0');		-- parallel memory interface, slave data
		
		r_sdcr			: IN		STD_LOGIC_VECTOR(7 downto 0);		-- SDCR - Slave Data Control Register (written by Atari)
		r_stbycr			: IN		STD_LOGIC_VECTOR(7 downto 0);		-- STBYCR - Slave Transfer Byte Count Register (written by Atari)
		r_stbkcr			: IN		STD_LOGIC_VECTOR(7 downto 0);		-- STBKCR - Slave Transfer Bank Count Register (written by Atari)
		r_sdsr			: OUT		STD_LOGIC_VECTOR(7 downto 0) := "X0000000";	-- SDSR - Slave Data Status Register (written by state machine & ESP32)
		r_mtbycr			: OUT		STD_LOGIC_VECTOR(7 downto 0) := (OTHERS => '0');	-- MTBYCR - Master Transfer Byte Count Register (written by ESP32)
		r_mtbkcr			: OUT		STD_LOGIC_VECTOR(7 downto 0) := (OTHERS => '0');	-- MTBKCR - Master Transfer Bank Count Register (written by ESP32)

	
		r_mrbs			: IN		STD_LOGIC_VECTOR(7 downto 0);
		r_srbs			: IN		STD_LOGIC_VECTOR(7 downto 0);

		reset_n      	: IN		STD_LOGIC;  		-- active low reset
		
		
		ss_n         	: IN		STD_LOGIC;  		-- SPI bus, active low slave select
		sclk         	: IN		STD_LOGIC;  		-- SPI bus, clock from master
		mosi         	: IN		STD_LOGIC;  		-- SPI bus, master out slave in
		miso         	: OUT		STD_LOGIC := 'Z' -- SPI bus, master in slave out
	);
END spi_dpram;

ARCHITECTURE logic OF spi_dpram IS
	SIGNAL busy					: STD_LOGIC;
	SIGNAL s_wr_bank			: STD_LOGIC_VECTOR(7 downto 0) := (OTHERS => '0');		-- RAM bank to be written on SPI port of RAM
	SIGNAL s_wr_addr			: STD_LOGIC_VECTOR(7 downto 0) := (OTHERS => '0');		-- RAM address to be written on SPI port of RAM
	SIGNAL s_rd_bank			: STD_LOGIC_VECTOR(7 downto 0) := (OTHERS => '0');		-- RAM bank to be read on SPI port of RAM
	SIGNAL s_rd_addr			: STD_LOGIC_VECTOR(7 downto 0) := (OTHERS => '0'); 	-- RAM address to be read on SPI port of RAM
	
	SIGNAL mode    			: STD_LOGIC;  		-- groups modes by clock polarity relation to data
	SIGNAL clk     			: STD_LOGIC;  		-- clock, normalized to be independent of external spi clock polarity
	
	SIGNAL bit_cnt 			: STD_LOGIC_VECTOR (RAM_ADDR_WIDTH DOWNTO 0) := (OTHERS => '0'); -- enough for 2x RAM width
	SIGNAL bit_cnt8			: INTEGER RANGE 0 to 7;

	SIGNAL master_ram_clk	: STD_LOGIC;
	SIGNAL slave_ram_clk		: STD_LOGIC;
	
	SIGNAL master_wren		: STD_LOGIC;
	SIGNAL slave_rden			: STD_LOGIC;
	
	SIGNAL slave_tx_buf		: STD_LOGIC_VECTOR(7 downto 0) := (OTHERS => '0');
		
	SIGNAL tx_buf  : STD_LOGIC_VECTOR(7 downto 0) := (OTHERS => '0');  -- transmit buffer
	SIGNAL rx_buf  : STD_LOGIC_VECTOR(7 downto 0) := (OTHERS => '0');  -- receive buffer

	SIGNAL shadow_sdsr 		: STD_LOGIC_VECTOR(7 downto 0) := (OTHERS => '0');

	SIGNAL p_clk_n				: STD_LOGIC;
	SIGNAL p_master_rden		: STD_LOGIC;
	SIGNAL p_master_wren		: STD_LOGIC;
	SIGNAL p_slave_rden		: STD_LOGIC;
	SIGNAL p_slave_wren		: STD_LOGIC;
	
	component dpram
		PORT
		(
			address_a		: IN STD_LOGIC_VECTOR (13 DOWNTO 0);
			address_b		: IN STD_LOGIC_VECTOR (13 DOWNTO 0);
			clock_a			: IN STD_LOGIC  := '1';
			clock_b			: IN STD_LOGIC ;
			data_a			: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			data_b			: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			rden_a			: IN STD_LOGIC  := '1';
			rden_b			: IN STD_LOGIC  := '1';
			wren_a			: IN STD_LOGIC  := '0';
			wren_b			: IN STD_LOGIC  := '0';
			q_a				: OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			q_b				: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
	end component;
	
BEGIN
	-- these are to satisfy Altera ModelSim which does not like assignments in component instantiation
	-- similar error to https://www.altera.com/support/support-resources/knowledge-base/solutions/rd03312005_587.html
	p_clk_n <= (NOT p_clk);
	p_master_rden <= (p_master_en AND p_rw);
	p_master_wren <= 	(p_master_en AND NOT p_rw);
	p_slave_rden <= (p_slave_en AND p_rw);
	p_slave_wren <= 	(p_slave_en AND NOT p_rw);
	
	-- "A" side of RAM is SPI interface (to ESP32)
	--	"B" side of RAM is parallel interface (to Atari PBI)
	
	dpram_master : dpram PORT MAP (
			address_a(13 DOWNTO 8)  => s_wr_bank(5 DOWNTO 0),
			address_a(7 DOWNTO 0)	=> s_wr_addr,
			clock_a		=> master_ram_clk,
			data_a	 	=> rx_buf,
			wren_a	 	=> master_wren,
			--q_a	 		=> q_a_sig,
			--rden_a	 	=> rden_a_sig,

			address_b(13 DOWNTO 8)  => r_mrbs(5 DOWNTO 0),
			address_b(7 DOWNTO 0)	=> p_master_addr,
			
			clock_b		=> p_clk_n,
			data_b	 	=> p_master_din,
			rden_b	 	=> p_master_rden,
			wren_b	 	=> p_master_wren,
			q_b	 		=> p_master_dout
		);

	dpram_slave : dpram PORT MAP (
			address_a(13 DOWNTO 8)  => s_rd_bank(5 DOWNTO 0),
			address_a(7 DOWNTO 0)	=> s_rd_addr,
			clock_a		=> slave_ram_clk,
			q_a	 		=> slave_tx_buf,
			rden_a	 	=> slave_rden,
			data_a	 	=> X"FF",
			wren_a	 	=> '0',

			address_b(13 DOWNTO 8)  => r_srbs(5 DOWNTO 0),
			address_b(7 DOWNTO 0)	=> p_slave_addr,
			clock_b		=> p_clk_n,
			data_b	 	=> p_slave_din,
			rden_b	 	=> p_slave_rden,
			wren_b	 	=> p_slave_wren,
			q_b	 		=> p_slave_dout
		);

		
	busy <= NOT ss_n;  --high during transactions

	-- adjust clock so writes are on rising edge and reads on falling edge
	--'1' for modes that write on rising edge
	mode <= cpol XOR cpha;
	WITH mode SELECT
		clk <= sclk WHEN '1',
			NOT sclk WHEN OTHERS;

			  
  -- bit counter
  PROCESS(ss_n, reset_n, bit_cnt, bit_cnt8, clk)
  BEGIN
    IF(ss_n = '1' OR reset_n = '0') THEN
		-- reset miso/mosi bit count
		bit_cnt <= (OTHERS => '0');
    ELSE
      IF(falling_edge(clk)) THEN
			-- increment bit count
			bit_cnt <= bit_cnt + 1;
		END IF;
    END IF;
	 
	 bit_cnt8 <= conv_integer(unsigned(bit_cnt(2 DOWNTO 0)));
	 
	 IF (bit_cnt8 = 7 AND clk = '1') THEN
		master_ram_clk <= '1';
	 ELSE
		master_ram_clk <= '0';
	 END IF;
	 
	 IF (bit_cnt8 = 0 AND clk = '0') THEN
		slave_ram_clk <= '1';
	ELSE
		slave_ram_clk <= '0';
	END IF;
	 
  END PROCESS;

  PROCESS(ss_n, clk, reset_n, bit_cnt, p_clk, p_rw, p_master_en, p_master_addr, p_master_din, p_slave_en,
			 p_slave_addr, p_slave_din, busy, shadow_sdsr)
  BEGIN

	-- sdsr register contents combine busy flag from state machine plus shadown sdsr register from spi master
	r_sdsr(7) <= busy;
	r_sdsr(6 DOWNTO 0) <= shadow_sdsr(6 DOWNTO 0);
  
	-- MOSI input
    IF(reset_n = '0' OR ss_n = '1' OR bit_cnt <= spi_hdr_bits-1 ) THEN
		s_wr_addr <= (OTHERS => '0');
		master_wren <= '0';
    ELSE
		IF (falling_edge(clk)) THEN
			IF (bit_cnt >= 0 AND bit_cnt <= 7) THEN
				-- 1st header byte: SDSR
				-- shadow used here because actual sdsr register contents are combined from SPI master and the SPI state machine
				shadow_sdsr(bit_cnt8) <= mosi;
				
				master_wren <= '0';
			ELSIF (bit_cnt >= 8 AND bit_cnt <= 15) THEN
				-- 2nd header byte: MTBYCR
				r_mtbycr(bit_cnt8) <= mosi;
				master_wren <= '0';
			ELSIF (bit_cnt >= 16 AND bit_cnt <= 23) THEN
				-- 3rd header byte: MTBKCR
				r_mtbkcr(bit_cnt8) <= mosi;
				master_wren <= '0';
			ELSIF (bit_cnt >= 24 AND bit_cnt <= 31) THEN
				-- 4th header byte: s_wr_bank
				s_wr_bank(bit_cnt8) <= mosi;
				master_wren <= '0';
			ELSIF (bit_cnt >= 32 AND bit_cnt <= 39) THEN
				-- 5th header byte: s_rd_bank
				s_rd_bank(bit_cnt8) <= mosi;
				master_wren <= '0';
			ELSE
				-- write to the rx buffer
				rx_buf(bit_cnt8) <= mosi;
				master_wren <= '1';
			END IF;
		END IF;

		-- auto-increment the write address after full byte clocked in
		IF (rising_edge(clk) AND bit_cnt > spi_hdr_bits-1 AND bit_cnt(2 DOWNTO 0) = "111") THEN
			s_wr_addr <= s_wr_addr + 1;
		END IF;
	END IF;
	
    -- transmit buffer for MISO output
    IF(reset_n = '0' OR ss_n = '1' OR bit_cnt <= spi_hdr_bits-1) THEN
      tx_buf <= (OTHERS => '0');
		s_rd_addr <= (OTHERS => '0');
		slave_rden <= '0';
    ELSE
		IF (falling_edge(clk)) THEN
			IF (bit_cnt >= 0 AND bit_cnt <= 7) THEN
				-- 1st header byte: SDCR
				tx_buf <= r_sdcr;
				slave_rden <= '0';
			ELSIF (bit_cnt >= 8 AND bit_cnt <= 15) THEN
				-- 2nd header byte: STBYCR
				tx_buf <= r_stbycr;
				slave_rden <= '0';
			ELSIF (bit_cnt >= 16 AND bit_cnt <= 23) THEN
				-- 3rd header byte: STBKCR
				tx_buf <= r_stbkcr;
				slave_rden <= '0';
			ELSIF (bit_cnt >= 24 AND bit_cnt <= 31) THEN
				-- 4th header byte: reserved
				tx_buf <= X"FF";
				slave_rden <= '0';
			ELSIF (bit_cnt >= 32 AND bit_cnt <= 39) THEN
				-- 5th header byte: reserved
				tx_buf <= X"FF";
				slave_rden <= '0';
			ELSIF (bit_cnt >= spi_hdr_bits) THEN
				-- load transmit buffer from dual port RAM at the current read address
				tx_buf <= slave_tx_buf;
				slave_rden <= '1';
			END IF;
		END IF;

		-- increment the read address
		IF (rising_edge(clk) AND bit_cnt > spi_hdr_bits-1 AND bit_cnt(2 DOWNTO 0) = "111") THEN
			s_rd_addr <= s_rd_addr + 1;
		END IF;
    END IF;

    -- MISO output
    IF(ss_n = '1' OR reset_n = '0') THEN
		-- no transaction occuring or reset
      miso <= 'Z';
    ELSIF(rising_edge(clk)) THEN
      -- send transmit buffer data bit to master
		miso <= tx_buf(bit_cnt8);
    END IF;
    
  END PROCESS;
END logic;

