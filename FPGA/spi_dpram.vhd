-------------------------------------------------------------------------------------------------------------------------------
--
-- Atari 8-bit PBI Bus Bridge
-- Steve Richardson (tangentaudio@gmail.com)
--
-- SPI slave to Dual Port RAM Interface
-- allows a SPI master to read from and write to two dual port RAM windows
-- the Atari PBI controls one side of these dual port RAMs to write/read data, and uses a few control signals tied to Atari
-- port registers to control the process
--
-- originally based on a SPI slave example by Scott Larson, https://eewiki.net/pages/viewpage.action?pageId=7569477
-- to which it now bears little resemblance
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
		cpol					: STD_LOGIC := '0';  											-- spi clock polarity mode
		cpha					: STD_LOGIC := '0'  												-- spi clock phase mode
	);
		
	PORT(
		reset_n      		: IN		STD_LOGIC;  											-- active low reset
		
		ss_n         		: IN		STD_LOGIC;  											-- SPI bus, active low slave select
		sclk         		: IN		STD_LOGIC;  											-- SPI bus, clock from master
		mosi         		: IN		STD_LOGIC;  											-- SPI bus, master out slave in
		miso         		: OUT		STD_LOGIC := 'Z'; 									-- SPI bus, master in slave out

		p_clk					: IN		STD_LOGIC;												-- parallel memory interface, clock (Atari PHI2)
		p_rw					: IN		STD_LOGIC;												-- parallel memory interface, read/write
		
		p_master_ram_en	: IN		STD_LOGIC;												-- parallel memory interface, master RAM enable
		p_master_ram_addr	: IN		STD_LOGIC_VECTOR(7 DOWNTO 0);						-- parallel memory interface, master RAM address
		p_master_ram_din	: IN		STD_LOGIC_VECTOR(7 downto 0);						-- parallel memory interface, master data in
		p_master_ram_dout	: OUT		STD_LOGIC_VECTOR(7 downto 0) := X"00";			-- parallel memory interface, master data out
		
		p_slave_ram_en		: IN		STD_LOGIC;												-- parallel memory interface, slave enable
		p_slave_ram_addr	: IN		STD_LOGIC_VECTOR(7 DOWNTO 0);						-- parallel memory interface,  slave address
		p_slave_ram_din	: IN		STD_LOGIC_VECTOR(7 downto 0);						-- parallel memory interface, slave data
		p_slave_ram_dout	: OUT		STD_LOGIC_VECTOR(7 downto 0) := X"00";			-- parallel memory interface, slave data
		
		r_sdcr				: IN		STD_LOGIC_VECTOR(7 downto 0);						-- SDCR - Slave Data Control Register (written by Atari)
		r_stbycr				: IN		STD_LOGIC_VECTOR(7 downto 0);						-- STBYCR - Slave Transfer Byte Count Register (written by Atari)
		r_stbkcr				: IN		STD_LOGIC_VECTOR(7 downto 0);						-- STBKCR - Slave Transfer Bank Count Register (written by Atari)
		r_sdsr				: OUT		STD_LOGIC_VECTOR(7 downto 0) := "X0000000";	-- SDSR - Slave Data Status Register (written by state machine & ESP32)
		r_mtbycr				: OUT		STD_LOGIC_VECTOR(7 downto 0) := X"00";			-- MTBYCR - Master Transfer Byte Count Register (written by ESP32)
		r_mtbkcr				: OUT		STD_LOGIC_VECTOR(7 downto 0) := X"00";			-- MTBKCR - Master Transfer Bank Count Register (written by ESP32)

		r_mrbs				: IN		STD_LOGIC_VECTOR(7 downto 0);						-- MRBS - Master RAM Bank Select
		r_srbs				: IN		STD_LOGIC_VECTOR(7 downto 0)						-- SRBS - Slave RAM Bank Select
	);
END spi_dpram;

ARCHITECTURE logic OF spi_dpram IS
	SIGNAL busy							: STD_LOGIC;
	
	SIGNAL mode    					: STD_LOGIC;  		-- SPI bus mode based on clock phase and polarity
	SIGNAL clk     					: STD_LOGIC;  		-- clock, normalized to be independent of external spi clock polarity
	
	SIGNAL first_bit_clocked		: STD_LOGIC := '0';
	SIGNAL bit_cnt 					: STD_LOGIC_VECTOR (11 DOWNTO 0) := (OTHERS => '0'); -- enough for 2x RAM width
	SIGNAL bit_cnt8					: INTEGER RANGE 0 to 7;
	
	SIGNAL s_master_ram_clk			: STD_LOGIC;														-- clock signal for the SPI port of the master RAM
	SIGNAL s_master_ram_data  		: STD_LOGIC_VECTOR(7 downto 0) := (OTHERS => '0');  	-- receive buffer
	SIGNAL s_master_ram_wren		: STD_LOGIC;														-- write enable signal for the SPI port of the master RAM
	SIGNAL s_master_ram_bank		: STD_LOGIC_VECTOR(7 downto 0) := (OTHERS => '0');		-- RAM bank to be written on SPI port of RAM
	SIGNAL s_master_ram_addr		: STD_LOGIC_VECTOR(7 downto 0) := (OTHERS => '0');		-- RAM address to be written on SPI port of RAM

	SIGNAL s_slave_ram_clk			: STD_LOGIC;														-- clock signal for the SPI port of the slave RAM
	SIGNAL s_slave_ram_q				: STD_LOGIC_VECTOR(7 downto 0) := (OTHERS => '0'); 	-- latches slave RAM data after read
	SIGNAL s_slave_ram_rden			: STD_LOGIC;														-- read enable signal for the SPI port of the slave RAM
	SIGNAL s_slave_ram_bank			: STD_LOGIC_VECTOR(7 downto 0) := (OTHERS => '0');		-- RAM bank to be read on SPI port of RAM
	SIGNAL s_slave_ram_addr			: STD_LOGIC_VECTOR(7 downto 0) := (OTHERS => '0'); 	-- RAM address to be read on SPI port of RAM
	
	SIGNAL s_sdsr 						: STD_LOGIC_VECTOR(7 downto 0) := (OTHERS => '0');		-- holds sdsr bits from SPI master

	SIGNAL spi_tx_buf  				: STD_LOGIC_VECTOR(7 downto 0) := (OTHERS => '0');  	-- SPI transmit buffer for current byte clocked out on MISO

	-- these are to satisfy ModelSim-Altera which does not like assignments in component instantiation
	-- similar error to https://www.altera.com/support/support-resources/knowledge-base/solutions/rd03312005_587.html	
	SIGNAL p_clk_n						: STD_LOGIC;
	SIGNAL p_master_ram_rden		: STD_LOGIC;
	SIGNAL p_master_ram_wren		: STD_LOGIC;
	SIGNAL p_slave_ram_rden			: STD_LOGIC;
	SIGNAL p_slave_ram_wren			: STD_LOGIC;
	
	-- Altera Dual Port RAM
	-- https://www.altera.com/content/dam/altera-www/global/en_US/pdfs/literature/ug/ug_ram_rom.pdf
	component dpram
		PORT
		(
			address_a	: IN STD_LOGIC_VECTOR (13 DOWNTO 0);
			address_b	: IN STD_LOGIC_VECTOR (13 DOWNTO 0);
			clock_a		: IN STD_LOGIC  := '1';
			clock_b		: IN STD_LOGIC ;
			data_a		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			data_b		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			rden_a		: IN STD_LOGIC  := '1';
			rden_b		: IN STD_LOGIC  := '1';
			wren_a		: IN STD_LOGIC  := '0';
			wren_b		: IN STD_LOGIC  := '0';
			q_a			: OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			q_b			: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
	end component;
	
BEGIN
	-- parallel bus memory logic signals
	p_clk_n <= (NOT p_clk);
	p_master_ram_rden <= (p_master_ram_en AND p_rw);
	p_master_ram_wren <= 	(p_master_ram_en AND NOT p_rw);
	p_slave_ram_rden <= (p_slave_ram_en AND p_rw);
	p_slave_ram_wren <= (p_slave_ram_en AND NOT p_rw);
	
	-- master DPRAM (holds data from SPI master, destined for Atari)
	dpram_master : dpram PORT MAP (
			-- "A" side of RAM is SPI interface (to ESP32) - signals are prefixed with s_
			address_a(13 DOWNTO 8)  => s_master_ram_bank(5 DOWNTO 0),
			address_a(7 DOWNTO 0)	=> s_master_ram_addr,
			clock_a		=> s_master_ram_clk,
			data_a	 	=> s_master_ram_data,
			wren_a	 	=> s_master_ram_wren,
			--q_a	 		=> q_a_sig,												-- master RAM is write-only on the "A" side
			--rden_a	 	=> rden_a_sig,											-- master RAM is write-only on the "A" side

			
			--	"B" side of RAM is parallel interface (to Atari PBI) - signals are prefixed with p_
			address_b(13 DOWNTO 8)  => r_mrbs(5 DOWNTO 0),				-- upper 6 bits are controlled by MRBS register
			address_b(7 DOWNTO 0)	=> p_master_ram_addr,
			clock_b		=> p_clk_n,
			data_b	 	=> p_master_ram_din,
			rden_b	 	=> p_master_ram_rden,
			wren_b	 	=> p_master_ram_wren,
			q_b	 		=> p_master_ram_dout
		);

	-- slave DPRAM (holds data from Atari, destined for SPI master)
	dpram_slave : dpram PORT MAP (
			-- "A" side of RAM is SPI interface (to ESP32) - signals are prefixed with s_
			address_a(13 DOWNTO 8)  => s_slave_ram_bank(5 DOWNTO 0),
			address_a(7 DOWNTO 0)	=> s_slave_ram_addr,
			clock_a		=> s_slave_ram_clk,
			q_a	 		=> s_slave_ram_q,
			rden_a	 	=> s_slave_ram_rden,
			data_a	 	=> X"FF",
			wren_a	 	=> '0',

			--	"B" side of RAM is parallel interface (to Atari PBI) - signals are prefixed with p_
			address_b(13 DOWNTO 8)  => r_srbs(5 DOWNTO 0),
			address_b(7 DOWNTO 0)	=> p_slave_ram_addr,
			clock_b		=> p_clk_n,
			data_b	 	=> p_slave_ram_din,
			rden_b	 	=> p_slave_ram_rden,
			wren_b	 	=> p_slave_ram_wren,
			q_b	 		=> p_slave_ram_dout
		);

		
	-- busy='1' during active SPI transactions
	busy <= NOT ss_n;  

	-- adjust clock so writes are on rising edge and reads on falling edge
	--'1' for modes that write on rising edge
	mode <= cpol XOR cpha;
	WITH mode SELECT
		clk <= sclk WHEN '1',
			NOT sclk WHEN OTHERS;

			  
  -- bit counter
  -- also generates the clock pulse at the appropriate cycle for the master RAM
  PROCESS(ss_n, reset_n, bit_cnt, bit_cnt8, clk, first_bit_clocked)
  BEGIN
    IF(ss_n = '1' OR reset_n = '0') THEN
		-- reset miso/mosi bit count
		bit_cnt <= (OTHERS => '0');
		bit_cnt8 <= 0;
		first_bit_clocked <= '0';
    ELSE
      IF(rising_edge(clk)) THEN
			if (first_bit_clocked = '0') THEN
				first_bit_clocked <= '1';
			ELSE
				-- increment bit count
				bit_cnt <= bit_cnt + 1;
				
				IF (bit_cnt8 = 7 AND clk = '1') THEN
					s_master_ram_clk <= '1';
				ELSE
					s_master_ram_clk <= '0';
				END IF;
				
			END IF;
		END IF;
    END IF;
	 
	 bit_cnt8 <= conv_integer(unsigned(bit_cnt(2 DOWNTO 0)));
  END PROCESS;

  
  -- generate slave RAM clock at the appropriate cycle
  PROCESS(bit_cnt8, clk)
  BEGIN
	 IF (bit_cnt8 = 7 AND clk = '0') THEN
		s_slave_ram_clk <= '1';
	ELSE
		s_slave_ram_clk <= '0';
	END IF;
  
  END PROCESS;
  
  
  -- main body of SPI DMA engine
  PROCESS(ss_n, clk, reset_n, bit_cnt, bit_cnt8, p_clk, p_rw, p_master_ram_en, p_master_ram_addr, p_master_ram_din, p_slave_ram_en,
			 p_slave_ram_addr, p_slave_ram_din, busy, s_sdsr)
  BEGIN
	-- sdsr register contents combine state machine data and data written by SPI master
	r_sdsr(7) <= busy;
	r_sdsr(6 DOWNTO 0) <= s_sdsr(6 DOWNTO 0);
  
	-- MOSI input
    IF(reset_n = '0' OR ss_n = '1') THEN
		s_master_ram_addr <= (OTHERS => '0');
		s_master_ram_wren <= '0';
    ELSE
		IF (falling_edge(clk)) THEN
			IF (bit_cnt >= 0 AND bit_cnt <= 7) THEN
				-- 1st header byte: SDSR
				-- shadow used here because actual sdsr register contents are combined from SPI master and the SPI state machine
				s_sdsr(bit_cnt8) <= mosi;
				
				s_master_ram_wren <= '0';
			ELSIF (bit_cnt >= 8 AND bit_cnt <= 15) THEN
				-- 2nd header byte: MTBYCR
				r_mtbycr(bit_cnt8) <= mosi;
				s_master_ram_wren <= '0';
			ELSIF (bit_cnt >= 16 AND bit_cnt <= 23) THEN
				-- 3rd header byte: MTBKCR
				r_mtbkcr(bit_cnt8) <= mosi;
				s_master_ram_wren <= '0';
			ELSIF (bit_cnt >= 24 AND bit_cnt <= 31) THEN
				-- 4th header byte: s_master_ram_bank
				s_master_ram_bank(bit_cnt8) <= mosi;
				s_master_ram_wren <= '0';
			ELSIF (bit_cnt >= 32 AND bit_cnt <= 39) THEN
				-- 5th header byte: s_slave_ram_bank
				s_slave_ram_bank(bit_cnt8) <= mosi;
				s_master_ram_wren <= '0';
			ELSE
				-- write to the rx buffer
				s_master_ram_data(bit_cnt8) <= mosi;
				s_master_ram_wren <= '1';
			END IF;
		END IF;

		-- auto-increment the write address after full byte clocked in
		IF (rising_edge(clk) AND conv_integer(unsigned(bit_cnt)) >= 48 AND bit_cnt8 = 0) THEN
			s_master_ram_addr <= s_master_ram_addr + 1;
		END IF;
	END IF;
	
    -- transmit buffer for MISO output
    IF(reset_n = '0' OR ss_n = '1') THEN
      spi_tx_buf <= (OTHERS => '0');
		s_slave_ram_addr <= (OTHERS => '0');
		s_slave_ram_rden <= '0';
    ELSE
		IF (falling_edge(clk)) THEN
			IF (bit_cnt >= 0 AND bit_cnt <= 7) THEN
				-- 1st header byte: SDCR
				spi_tx_buf <= r_sdcr;
				s_slave_ram_rden <= '0';
			ELSIF (bit_cnt >= 8 AND bit_cnt <= 15) THEN
				-- 2nd header byte: STBYCR
				spi_tx_buf <= r_stbycr;
				s_slave_ram_rden <= '0';
			ELSIF (bit_cnt >= 16 AND bit_cnt <= 23) THEN
				-- 3rd header byte: STBKCR
				spi_tx_buf <= r_stbkcr;
				s_slave_ram_rden <= '0';
			ELSIF (bit_cnt >= 24 AND bit_cnt <= 31) THEN
				-- 4th header byte: reserved
				spi_tx_buf <= X"FF";
				s_slave_ram_rden <= '0';
			ELSIF (bit_cnt >= 32 AND bit_cnt <= 39) THEN
				-- 5th header byte: reserved
				spi_tx_buf <= X"FF";
				-- enabled one byte cycle early because data must be pre-read
				s_slave_ram_rden <= '1';
			ELSE
				-- load transmit buffer from dual port RAM at the current read address
				spi_tx_buf <= s_slave_ram_q;
				s_slave_ram_rden <= '1';
			END IF;
		END IF;

		-- increment the read address
		IF (rising_edge(clk) AND conv_integer(unsigned(bit_cnt)) >= 40 AND bit_cnt8 = 6) THEN
			s_slave_ram_addr <= s_slave_ram_addr + 1;
		END IF;
    END IF;

    -- MISO output
    IF(ss_n = '1' OR reset_n = '0') THEN
		-- no transaction occuring or reset
      miso <= 'Z';
    ELSIF(rising_edge(clk)) THEN
      -- send transmit buffer data bit to master
		miso <= spi_tx_buf(bit_cnt8);
    END IF;
    
  END PROCESS;
END logic;

