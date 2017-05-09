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
		spi_hdr_bits	: INTEGER := 24;		-- count of bits in the SPI header
		RAM_DATA_WIDTH	: INTEGER := 8;		-- data bus width of the dual port RAM
		RAM_ADDR_WIDTH : INTEGER := 8			-- address bus width of the dual port RAM
	);
		
	PORT(
		p_clk				: IN		STD_LOGIC;			-- parallel memory interface, clock
		p_rw				: IN		STD_LOGIC;			-- parallel memory interface, read/write
		
		p_master_en		: IN		STD_LOGIC;			-- parallel memory interface, master enable
		p_master_data	: INOUT	STD_LOGIC_VECTOR(7 downto 0);					-- parallel memory interface, master data
		p_master_addr	: IN		STD_LOGIC_VECTOR(RAM_ADDR_WIDTH-1 DOWNTO 0);	-- parallel memory interface, master address
		
		p_slave_en		: IN		STD_LOGIC;			-- parallel memory interface, slave enable
		p_slave_addr	: IN		STD_LOGIC_VECTOR(RAM_ADDR_WIDTH-1 DOWNTO 0);	-- parallel memory interface,  slave address
		p_slave_data 	: INOUT	STD_LOGIC_VECTOR(7 downto 0) := (OTHERS => '0');		-- parallel memory interface, slave data
		
		r_sdcr			: IN		STD_LOGIC_VECTOR(7 downto 0);					-- SDCR - Slave Data Control Register (written by Atari)
		r_stbycr			: IN		STD_LOGIC_VECTOR(7 downto 0);					-- STBYCR - Slave Transfer Byte Count Register (written by Atari)
		r_stbkcr			: IN		STD_LOGIC_VECTOR(7 downto 0);					-- STBKCR - Slave Transfer Bank Count Register (written by Atari)
		r_sdsr			: OUT		STD_LOGIC_VECTOR(7 downto 0) := (OTHERS => '0');		-- SDSR - Slave Data Status Register (written by state machine & ESP32)
		r_mtbycr			: OUT		STD_LOGIC_VECTOR(7 downto 0) := (OTHERS => '0');		-- MTBYCR - Master Transfer Byte Count Register (written by ESP32)
		r_mtbkcr			: OUT		STD_LOGIC_VECTOR(7 downto 0) := (OTHERS => '0');		-- MTBKCR - Master Transfer Bank Count Register (written by ESP32)
		
		reset_n      	: IN		STD_LOGIC;  		-- SPI bus, active low reset
		ss_n         	: IN		STD_LOGIC;  		-- SPI bus, active low slave select
		sclk         	: IN		STD_LOGIC;  		-- SPI bus, clock from master
		mosi         	: IN		STD_LOGIC;  		-- SPI bus, master out slave in
		miso         	: OUT		STD_LOGIC := 'Z'; -- SPI bus, master in slave out

		busy         	: OUT		STD_LOGIC := '0' -- busy signal to logic ('1' during transaction)
	);
END spi_dpram;

ARCHITECTURE logic OF spi_dpram IS
	subtype word_t is std_logic_vector((RAM_DATA_WIDTH-1) downto 0);
	type memory_t is array(2**RAM_ADDR_WIDTH-1 downto 0) of word_t;
	
	SIGNAL ram_from_master 		: memory_t;				-- dual port RAM that holds data coming from SPI master
	SIGNAL ram_to_master 		: memory_t;				-- dual port RAM that holds data to be sent to SPI master

	
	SIGNAL s_wr_addr			: INTEGER RANGE 0 to 2**RAM_ADDR_WIDTH-1 := 0;	-- RAM address to be written on SPI port of RAM
	SIGNAL s_rd_addr			: INTEGER RANGE 0 to 2**RAM_ADDR_WIDTH-1 := 0; 	-- RAM address to be read on SPI port of RAM
	
	SIGNAL mode    				: STD_LOGIC;  		-- groups modes by clock polarity relation to data
	SIGNAL clk     				: STD_LOGIC;  		-- clock, normalized to be independent of external spi clock polarity
	
	SIGNAL bit_cnt 				: STD_LOGIC_VECTOR (RAM_ADDR_WIDTH DOWNTO 0) := (OTHERS => '0'); -- enough for 2x RAM width
	SIGNAL bit_cnt8				: INTEGER RANGE 0 to 7;
	
	SIGNAL tx_buf  : STD_LOGIC_VECTOR(7 downto 0) := (OTHERS => '0');  -- transmit buffer
	
BEGIN
	busy <= NOT ss_n;  --high during transactions

	-- adjust clock so writes are on rising edge and reads on falling edge
	--'1' for modes that write on rising edge
	mode <= cpol XOR cpha;
	WITH mode SELECT
		clk <= sclk WHEN '1',
			NOT sclk WHEN OTHERS;

			  
  -- bit counter
  PROCESS(ss_n, reset_n, bit_cnt, clk)
  BEGIN
    IF(ss_n = '1' OR reset_n = '0') THEN
		-- reset miso/mosi bit count
		bit_cnt <= (OTHERS => '0');
    ELSE
      IF(rising_edge(clk)) THEN
			-- increment bit count
			bit_cnt <= bit_cnt + 1;
		END IF;
    END IF;
	 
	 bit_cnt8 <= conv_integer(unsigned(bit_cnt(2 DOWNTO 0)));
	 
  END PROCESS;

  PROCESS(ss_n, clk, reset_n, bit_cnt, p_clk, p_rw, p_master_en, p_master_addr, p_master_data, p_slave_en,
			 p_slave_addr, p_slave_data, ram_from_master, ram_to_master)
  BEGIN

	IF (reset_n = '0') THEN
		p_master_data <= "ZZZZZZZZ";
		p_slave_data <= "ZZZZZZZZ";
	ELSE
		-- parallel bus interface to dual port RAM		
		IF (p_rw = '0') THEN
			p_master_data <= "ZZZZZZZZ";
			p_slave_data <= "ZZZZZZZZ";
			
			-- WRITE to RAM on parallel bus side of dual port RAM
			IF (falling_edge(p_clk)) THEN
				IF (p_master_en = '1') THEN
					-- master RAM write (latched on falling edge of clk)
					ram_from_master(conv_integer(unsigned(p_master_addr))) <= p_master_data;
				END IF;
				
				IF (p_slave_en = '1') THEN
					-- slave RAM write (latched on falling edge of clk)
					ram_to_master(conv_integer(unsigned(p_slave_addr))) <= p_slave_data;
				END IF;
			END IF;
		ELSE
			-- READ to RAM on parallel bus side of dual port RAM
			IF (p_clk = '1') THEN
				IF (p_master_en = '1') THEN
					p_master_data <= ram_from_master(conv_integer(unsigned(p_master_addr)));
				ELSE
					p_master_data <= "ZZZZZZZZ";
				END IF;
				
				IF (p_slave_en = '1') THEN
					p_slave_data <= ram_to_master(conv_integer(unsigned(p_slave_addr)));
				ELSE
					p_slave_data <= "ZZZZZZZZ";
				END IF;
			END IF;
		END IF;
	END IF;
  
	-- MOSI input
    IF(reset_n = '0' OR ss_n = '1' OR bit_cnt <= spi_hdr_bits-1 ) THEN
		s_wr_addr <= 0;
    ELSE
		IF (falling_edge(clk)) THEN
			IF (bit_cnt >= 0 AND bit_cnt <= 7) THEN
				-- 1st header byte: SDSR
				r_sdsr(bit_cnt8) <= mosi;
			ELSIF (bit_cnt >= 8 AND bit_cnt <= 15) THEN
				-- 2nd header byte: MTBYCR
				r_mtbycr(bit_cnt8) <= mosi;
			ELSIF (bit_cnt >= 16 AND bit_cnt <= 23) THEN
				-- 3rd header byte: MTBKCR
				r_mtbkcr(bit_cnt8) <= mosi;
			ELSE
				-- write to the dual port RAM at the write address
				--ram_from_master(s_wr_addr)(bit_cnt8) <= mosi;
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
		s_rd_addr <= 0;
    ELSE
		IF (falling_edge(clk)) THEN
			IF (bit_cnt >= 0 AND bit_cnt <= 7) THEN
				-- 1st header byte: SDCR
				tx_buf <= r_sdcr;
			ELSIF (bit_cnt >= 8 AND bit_cnt <= 15) THEN
				-- 2nd header byte: STBYCR
				tx_buf <= r_stbycr;
			ELSIF (bit_cnt >= 16 AND bit_cnt <= 23) THEN
				-- 3rd header byte: STBKCR
				tx_buf <= r_stbkcr;
			ELSIF (bit_cnt >= spi_hdr_bits) THEN
				-- load transmit buffer from dual port RAM at the current read address
				tx_buf <= ram_to_master(s_rd_addr);
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
    ELSIF(rising_edge(clk) AND bit_cnt >= spi_hdr_bits-1) THEN
      -- send transmit buffer data bit to master
		miso <= tx_buf(bit_cnt8);
    END IF;
    
  END PROCESS;
END logic;

