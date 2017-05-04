-------------------------------------------------------------------------------------------------------------------------------
--
-- Atari 8-bit PBI Bus Bridge
-- SPI slave to Dual Port RAM Interface
-- allows a SPI master to read from and write to two dual port RAM windows
-- the Atari PBI controls one side of these dual port RAMs to write/read data, and uses a few control signals tied to Atari
-- port registers to control the process
--
-- based on a SPI slave example by Scott Larson, https://eewiki.net/pages/viewpage.action?pageId=7569477 and modified for
-- the dual port RAM interface by Steve Richardson (tangentaudio@gmail.com)
--
--
-- 2017MAY01 - Epoch
--
-------------------------------------------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

PACKAGE ram_package IS
   CONSTANT ram_width : INTEGER := 8;
   CONSTANT ram_depth : INTEGER := 512;
   
   TYPE word IS ARRAY(0 to ram_width - 1) of std_logic;
   TYPE ram IS ARRAY(0 to ram_depth - 1) of word;
   SUBTYPE address_vector IS INTEGER RANGE 0 to ram_depth - 1;
	
	TYPE byte is ARRAY(7 downto 0) of bit;
END ram_package;


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.all;
USE work.ram_package.ALL;

ENTITY spi_dpram IS
	GENERIC (
		cpol			: STD_LOGIC := '0';  -- spi clock polarity mode
		cpha			: STD_LOGIC := '0';  -- spi clock phase mode
		d_width			: INTEGER := 8		 -- spi bus register data width in bits
	);
		
	PORT(
		p_clk			: IN		std_logic;			-- parallel memory interface, clock
		p_wr_data		: IN		byte;				-- parallel memory interface, data to write
		p_rd_data 		: OUT		byte;				-- parallel memory interface, data to read
		p_we    		: IN		std_logic;			-- parallel memory interface, write enable

		p_wr_addr		: IN		address_vector;		-- parallel memory interface, address to write
		p_rd_addr		: IN		address_vector;		-- parallel memory interface, address to read
		
		reset_n      	: IN		STD_LOGIC;  		-- SPI bus, active low reset
		ss_n         	: IN		STD_LOGIC;  		-- SPI bus, active low slave select
		sclk         	: IN		STD_LOGIC;  		-- SPI bus, clock from master
		mosi         	: IN		STD_LOGIC;  		-- SPI bus, master out slave in
		miso         	: OUT		STD_LOGIC := 'Z'; 	-- SPI bus, master in slave out

		busy         	: OUT		STD_LOGIC := '0';  	-- busy signal to logic ('1' during transaction)
		
		rx_req       	: IN		STD_LOGIC;  		--'1' while busy = '0' moves data to the rx_data output
		st_load_en   	: IN		STD_LOGIC;  		-- asynchronous load enable
		st_load_trdy 	: IN		STD_LOGIC;  		-- asynchronous trdy load input
		st_load_rrdy 	: IN		STD_LOGIC;  		-- asynchronous rrdy load input
		st_load_roe  	: IN		STD_LOGIC;  		-- asynchronous roe load input
		tx_load_en   	: IN		STD_LOGIC;  		-- asynchronous transmit buffer load enable
		tx_load_data 	: IN		STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);  -- asynchronous tx data to load
		trdy         	: BUFFER	STD_LOGIC := '0';  	-- transmit ready bit
		rrdy         	: BUFFER	STD_LOGIC := '0';  	-- receive ready bit
		roe          	: BUFFER	STD_LOGIC := '0';  	-- receive overrun error bit
		rx_data      	: OUT		STD_LOGIC_VECTOR(d_width-1 DOWNTO 0) := (OTHERS => '0');  -- receive register output to logic
	);
END spi_dpram;

ARCHITECTURE logic OF spi_dpram IS
	SIGNAL ram_from_master 		: RAM;				-- dual port RAM that holds data coming from SPI master
	SIGNAL ram_to_master 		: RAM;				-- dual port RAM that holds data to be sent to SPI master
	
	SIGNAL s_wr_addr			: address_vector := (OTHERS => '0');	-- address to be written on SPI port of RAM
	SIGNAL s_rd_addr			: address_vector := (OTHERS => '0'); 	-- address to be read on SPI port of RAM
	
	SIGNAL mode    				: STD_LOGIC;  --groups modes by clock polarity relation to data
	SIGNAL clk     				: STD_LOGIC;  --clock
	SIGNAL bit_cnt 				: STD_LOGIC_VECTOR(d_width+8 DOWNTO 0);  --'1' for active transaction bit
	SIGNAL wr_add  				: STD_LOGIC;  --address of register to write ('0' = receive, '1' = status)
	SIGNAL rd_add  				: STD_LOGIC;  --address of register to read ('0' = transmit, '1' = status)
		
	SIGNAL rx_buf  : STD_LOGIC_VECTOR(d_width-1 DOWNTO 0) := (OTHERS => '0');  --receiver buffer
	SIGNAL tx_buf  : STD_LOGIC_VECTOR(d_width-1 DOWNTO 0) := (OTHERS => '0');  --transmit buffer
	
BEGIN
  busy <= NOT ss_n;  --high during transactions
  
  --adjust clock so writes are on rising edge and reads on falling edge
  mode <= cpol XOR cpha;  --'1' for modes that write on rising edge
  WITH mode SELECT
    clk <= sclk WHEN '1',
           NOT sclk WHEN OTHERS;

  --keep track of miso/mosi bit counts for data alignmnet
  PROCESS(ss_n, clk)
  BEGIN
    IF(ss_n = '1' OR reset_n = '0') THEN                         --this slave is not selected or being reset
	   bit_cnt <= (conv_integer(NOT cpha) => '1', OTHERS => '0'); --reset miso/mosi bit count
    ELSE                                                         --this slave is selected
      IF(rising_edge(clk)) THEN                                  --new bit on miso/mosi
        bit_cnt <= bit_cnt(d_width+8-1 DOWNTO 0) & '0';          --shift active bit indicator
      END IF;
    END IF;
  END PROCESS;

  PROCESS(ss_n, clk, st_load_en, tx_load_en, rx_req)
  BEGIN
  
    --write address register ('0' for receive, '1' for status)
    IF(bit_cnt(1) = '1' AND falling_edge(clk)) THEN
      wr_add <= mosi;
    END IF;

    --read address register ('0' for transmit, '1' for status)
    IF(bit_cnt(2) = '1' AND falling_edge(clk)) THEN
      rd_add <= mosi;
    END IF;
    
    --trdy register
    IF((ss_n = '1' AND st_load_en = '1' AND st_load_trdy = '0') OR reset_n = '0') THEN  
      trdy <= '0';   --cleared by user logic or reset
    ELSIF(ss_n = '1' AND ((st_load_en = '1' AND st_load_trdy = '1') OR tx_load_en = '1')) THEN
      trdy <= '1';   --set when tx buffer written or set by user logic                                  
    ELSIF(wr_add = '1' AND bit_cnt(9) = '1' AND falling_edge(clk)) THEN
      trdy <= mosi;  --new value written over spi bus
    ELSIF(rd_add = '0' AND bit_cnt(d_width+8) = '1' AND falling_edge(clk)) THEN
      trdy <= '0';   --clear when transmit buffer read
    END IF;
    
    --rrdy register
    IF((ss_n = '1' AND ((st_load_en = '1' AND st_load_rrdy = '0') OR rx_req = '1')) OR reset_n = '0') THEN
      rrdy <= '0';   --cleared by user logic or rx_data has been requested or reset
    ELSIF(ss_n = '1' AND st_load_en = '1' AND st_load_rrdy = '1') THEN
      rrdy <= '1';   --set when set by user logic
    ELSIF(wr_add = '1' AND bit_cnt(10) = '1' AND falling_edge(clk)) THEN
      rrdy <= mosi;  --new value written over spi bus
    ELSIF(wr_add = '0' AND bit_cnt(d_width+8) = '1' AND falling_edge(clk)) THEN
      rrdy <= '1';   --set when new data received
    END IF;
    
    --roe register
    IF((ss_n = '1' AND st_load_en = '1' AND st_load_roe = '0') OR reset_n = '0') THEN
      roe <= '0';   --cleared by user logic or reset
    ELSIF(ss_n = '1' AND st_load_en = '1' AND st_load_roe = '1') THEN
      roe <= '1';   --set by user logic
    ELSIF(rrdy = '1' AND wr_add = '0' AND bit_cnt(d_width+8) = '1' AND falling_edge(clk)) THEN
      roe <= '1';   --set by actual overrun
    ELSIF(wr_add = '1' AND bit_cnt(11) = '1' AND falling_edge(clk)) THEN
      roe <= mosi;  --new value written by spi bus
    END IF;
    
    --receive registers
    --write to the receive register from master
    IF(reset_n = '0') THEN
      rx_buf <= (OTHERS => '0');
    ELSE
      FOR i IN 0 TO d_width-1 LOOP          
        IF(wr_add = '0' AND bit_cnt(i+9) = '1' AND falling_edge(clk)) THEN
          rx_buf(d_width-1-i) <= mosi;
        END IF;
      END LOOP;
    END IF;
    --fulfill user logic request for receive data
    IF(reset_n = '0') THEN
      rx_data <= (OTHERS => '0');
    ELSIF(ss_n = '1' AND rx_req = '1') THEN  
      rx_data <= rx_buf;
    END IF;

    --transmit registers
    IF(reset_n = '0') THEN
      tx_buf <= (OTHERS => '0');
    ELSIF(ss_n = '1' AND tx_load_en = '1') THEN  --load transmit register from user logic
      tx_buf <= tx_load_data;
    ELSIF(rd_add = '0' AND bit_cnt(7 DOWNTO 0) = "00000000" AND bit_cnt(d_width+8) = '0' AND rising_edge(clk)) THEN
      tx_buf(d_width-1 DOWNTO 0) <= tx_buf(d_width-2 DOWNTO 0) & tx_buf(d_width-1);  --shift through tx data
    END IF;

    --miso output register
    IF(ss_n = '1' OR reset_n = '0') THEN           --no transaction occuring or reset
      miso <= 'Z';
    ELSIF(rd_add = '1' AND rising_edge(clk)) THEN  --write status register to master
      CASE bit_cnt(10 DOWNTO 8) IS
        WHEN "001" => miso <= trdy;
        WHEN "010" => miso <= rrdy;
        WHEN "100" => miso <= roe;
        WHEN OTHERS => NULL;
      END CASE;
    ELSIF(rd_add = '0' AND bit_cnt(7 DOWNTO 0) = "00000000" AND bit_cnt(d_width+8) = '0' AND rising_edge(clk)) THEN
      miso <= tx_buf(d_width-1);                  --send transmit register data to master
    END IF;
    
  END PROCESS;
END logic;



/*
ENTITY ram_dual IS
   PORT
   (
      clock1 : IN   std_logic;
      clock2 : IN   std_logic;
      data   : IN   word;
      write_address: IN  address_vector;
      read_address:  IN  address_vector;
      we     : IN   std_logic;
      q      : OUT  word
   );
END ram_dual;

ARCHITECTURE rtl OF ram_dual IS
   SIGNAL ram_block : RAM;
 
BEGIN
   PROCESS (clock1)
   BEGIN
      IF (clock1'event AND clock1 = '1') THEN
         IF (we = '1') THEN
            ram_block(write_address) <= data;
         END IF;
      END IF;
   END PROCESS;
   PROCESS (clock2)
   BEGIN
      IF (clock2'event AND clock2 = '1') THEN
         q <= ram_block(read_address);
      END IF;
   END PROCESS;
END rtl;
*/