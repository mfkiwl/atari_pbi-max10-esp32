-------------------------------------------------------------------------------------------------------------------------------
--
-- Atari 8-bit PBI Bus Bridge
--
-- Steve Richardson (tangentaudio@gmail.com)
--
-- 2017APR01 - Epoch
--
-------------------------------------------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity pbi_bridge is
	PORT(
		-- temp to observe externally
		master_ram_clk	:	BUFFER std_logic;
		master_ram_rden : BUFFER std_logic;
		master_ram_wren : BUFFER std_logic;
		
		n_led1		: OUT		std_logic := '1';						-- LED1 for test
		n_led2		: OUT		std_logic := '1';						-- LED2 for test
		n_led3		: OUT		std_logic := '1';						-- LED3 for test
		n_led4		: OUT		std_logic := '1';						-- LED4 for test
		n_led5		: OUT		std_logic := '1';						-- LED5 for test (enabled when PBI device selected)
		dip_sw		: IN		std_logic_vector(4 downto 0);		-- DIP switches on eval (for PBI device ID)
		clk_57		: IN		std_logic;								-- 57.28MHz oscillator from external PLL (32 * PHI2)
		phi2			: IN		std_logic;								-- Atari PHI2 clock (1.79MHz NTSC, 1.77MHz PAL)
		phi2_early	: BUFFER	std_logic;								-- shortened PHI2 cycle completion signal
		rw				: IN		std_logic;								-- latched read/write (1=Atari reading RAM/device, 0=Atari writing RAM/device)
		addr			: IN 		std_logic_vector (15 downto 0);	-- address bus
		data			: INOUT	std_logic_vector (7 downto 0) := "ZZZZZZZZ";	-- data bus, via bus transceiver controlled with data_dir and n_data_oe
		data_dir		: OUT		std_logic := '1';						-- data bus transceiver direction control (1=Atari->FPGA)
		n_data_oe	: OUT		std_logic := '1';						-- data bus output enable (0=enabled)
		n_reset		: IN		std_logic;								-- reset signal from Atari (0=reset)
		extenb		: IN		std_logic;								-- EXTernal ENaBLe, Atari sets this to 1 for PBI device access
		n_extsel		: OUT		std_logic := '1';						-- EXTernal SELect, must set this to 0 to disable Atari internal RAM during PBI access
		n_mpd			: OUT		std_logic := '1';						-- Math Pack Disable, must set this to 0 to disable Atari floating point ROM (D800-D81C)		
		n_irq			: OUT		std_logic := '1';						-- Interrupt ReQuest line (requires handshaking on D1FF to identify IRQ source)
		n_rdy			: OUT		std_logic := '1';						-- Briefly stop CPU (use with extreme caution, ANTIC already uses this)

		spi_clk		: IN		std_logic;								-- SPI clock from master
		spi_ss_n		: IN		std_logic;								-- SPI slave select
		spi_mosi		: IN		std_logic;								-- SPI Master Out / Slave In
		spi_miso		: OUT		std_logic := 'Z';						-- SPI Master In / Slave Out
		
		spi_mbf		: OUT		std_logic;								-- SPI DMA engine, set to '1' when Master Buffer Free
		spi_sdav		: OUT		std_logic								-- SPI DMA engine, set to '1' when Slave Data Available
	);
end pbi_bridge;


ARCHITECTURE behavior OF pbi_bridge IS
	-- latch to hold address
	SIGNAL addr_latch : std_logic_vector(15 downto 0) := X"FFFF";
	-- latch to hold rw signal
	SIGNAL rw_latch : std_logic := '0';
	
	-- various device address ranges active, and special PBI hw_sel address active
	-- 0xD800 - 0xD81C : PBI DEVICE ROM SPACE
	-- 0xD600 - 0xD7FF : PBI DEVICE RAM SPACE
	-- 0xD1FF          : HW_SEL REGISTER
	-- 0xD100 - 0xD1FE : PBI DEVICE REGISTERS
	SIGNAL dev_reg_act : boolean := false;
	SIGNAL dev_rom_act : boolean := false;
	SIGNAL hw_sel_act : boolean := false;

	-- latch to hold PBI device select register
	SIGNAL hw_sel : std_logic_vector(7 downto 0) := X"00";
	
	-- constant to hold our device address in hw_sel (single bit set)
	SIGNAL PBI_ADDR : std_logic_vector(7 downto 0) := X"00";

	-- counter used to tick off cycles of the 50MHz clock after rising edge of PHI2
	SIGNAL clk_counter : std_logic_vector(3 downto 0) := X"0";
	
	-- latch used to hold LED values
	SIGNAL led_latch : std_logic_vector(4 downto 0) := "00000";
	
	-- signals to interface with ALTUFM flash device
	SIGNAL flash_read : std_logic := '0';
	SIGNAL flash_read_valid : std_logic := '0';
	SIGNAL flash_data : std_logic_vector(31 downto 0) := (OTHERS => '1');
	SIGNAL flash_data_latch : std_logic_vector(31 downto 0) := (OTHERS => '1');
	SIGNAL flash_addr : std_logic_vector(14 downto 0) := (OTHERS => '0');
	
	-- signals for SPI dual port RAM interface
	SIGNAL reg_sdcr			:	 	STD_LOGIC_VECTOR(7 DOWNTO 0) := X"00";
	SIGNAL reg_stbycr			:	 	STD_LOGIC_VECTOR(7 DOWNTO 0) := X"00";
	SIGNAL reg_stbkcr			:	 	STD_LOGIC_VECTOR(7 DOWNTO 0) := X"00";
	SIGNAL reg_sdsr			:	 	STD_LOGIC_VECTOR(7 DOWNTO 0) := X"00";
	SIGNAL reg_mtbycr			:	 	STD_LOGIC_VECTOR(7 DOWNTO 0) := X"00";
	SIGNAL reg_mtbkcr			:	 	STD_LOGIC_VECTOR(7 DOWNTO 0) := X"00";
	SIGNAL reg_mrbs			:		STD_LOGIC_VECTOR(7 DOWNTO 0) := X"00";
	SIGNAL reg_srbs			:		STD_LOGIC_VECTOR(7 DOWNTO 0) := X"00";
	SIGNAL reg_fbs				:		STD_LOGIC_VECTOR(7 DOWNTO 0) := X"00";
	
	--SIGNAL master_ram_clk	:		STD_LOGIC := '0';
	--SIGNAL master_ram_rden	:		STD_LOGIC := '0';
	--SIGNAL master_ram_wren	:		STD_LOGIC := '0';
	SIGNAL master_din			:		STD_LOGIC_VECTOR(7 DOWNTO 0) := X"00";
	SIGNAL master_dout		:		STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL slave_ram_clk		:		STD_LOGIC := '0';
	SIGNAL slave_ram_rden	:		STD_LOGIC := '0';
	SIGNAL slave_ram_wren	:		STD_LOGIC := '0';
	--SIGNAL slave_din			:		STD_LOGIC_VECTOR(7 DOWNTO 0) := X"00";
	SIGNAL slave_dout			:		STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	
	-- Altera ALTUFM component for PBI Flash ROM space
	-- See https://www.altera.com/en_US/pdfs/literature/hb/max-10/ug_m10_ufm.pdf
	COMPONENT pbi_rom IS
		PORT (
			clock                   : in  std_logic                     := 'X';             -- clk
			reset_n                 : in  std_logic                     := 'X';             -- reset_n
			avmm_data_addr          : in  std_logic_vector(16 downto 0) := (others => 'X'); -- address
			avmm_data_read          : in  std_logic                     := 'X';             -- read
			avmm_data_readdata      : out std_logic_vector(31 downto 0);                    -- readdata
			avmm_data_waitrequest   : out std_logic;                                        -- waitrequest
			avmm_data_readdatavalid : out std_logic;                                        -- readdatavalid
			avmm_data_burstcount    : in  std_logic_vector(3 downto 0)  := (others => 'X')  -- burstcount
		);
	END COMPONENT pbi_rom;

	
	-- SPI interface with dual port RAM transfer buffers
	COMPONENT spi_dpram
		GENERIC ( 	cpol : STD_LOGIC := '0';
						cpha : STD_LOGIC := '0');
		PORT
		(
			p_master_ram_clk	:	 IN STD_LOGIC;
			p_master_ram_rden	:	 IN STD_LOGIC;
			p_master_ram_wren	:	 IN STD_LOGIC;
			p_master_ram_addr	:	 IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			p_master_ram_din	:	 IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			p_master_ram_dout	:	 OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			p_slave_ram_clk	:	 IN STD_LOGIC;
			p_slave_ram_rden	:	 IN STD_LOGIC;
			p_slave_ram_wren	:	 IN STD_LOGIC;
			p_slave_ram_addr	:	 IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			p_slave_ram_din	:	 IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			p_slave_ram_dout	:	 OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			r_sdcr				:	 IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			r_stbycr				:	 IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			r_stbkcr				:	 IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			r_sdsr				:	 OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			r_mtbycr				:	 OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			r_mtbkcr				:	 OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			r_mrbs				:	 IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			r_srbs				:	 IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			reset_n				:	 IN STD_LOGIC;
			ss_n					:	 IN STD_LOGIC;
			sclk					:	 IN STD_LOGIC;
			mosi					:	 IN STD_LOGIC;
			miso					:	 OUT STD_LOGIC
		);
	END COMPONENT;

	
BEGIN

-- Altera ALTUFM signal & pin mapping
u0 : component pbi_rom
	port map (
		clock                   		=> clk_57,             				-- clk
		reset_n                 		=> n_reset,            				-- reset
		avmm_data_addr(16 DOWNTO 9)   => reg_fbs, 							-- data.address[16:9] (256 total 512 x 32-bit banks selectable)
		avmm_data_addr(8 DOWNTO 0)   	=> addr_latch(10 DOWNTO 2),  		-- data.address[ 8:0] (512 x 32-bit words bank size)
		avmm_data_read          		=> flash_read,      					-- start read signal
		avmm_data_readdata      		=> flash_data,  						-- flash data bus
		avmm_data_readdatavalid 		=> flash_read_valid, 				-- flash data read is valid
		avmm_data_burstcount    		=> X"1"   								-- burstcount (set to 1 for parallel access)
	);

-- SPI Dual Port RAM signal & pin mapping
u1	: component spi_dpram
	port map (
			p_master_ram_clk	=>	master_ram_clk,
			p_master_ram_rden	=>	master_ram_rden,
			p_master_ram_wren	=>	master_ram_wren,
			p_master_ram_addr	=>	addr_latch(7 DOWNTO 0),
			p_master_ram_din	=>	data,
			p_master_ram_dout	=>	master_dout,
			p_slave_ram_clk	=>	slave_ram_clk,
			p_slave_ram_rden	=>	slave_ram_rden,
			p_slave_ram_wren	=>	slave_ram_wren,
			p_slave_ram_addr	=>	addr_latch(7 DOWNTO 0),
			p_slave_ram_din	=>	data,
			p_slave_ram_dout	=>	slave_dout,
		
			reset_n				=> n_reset,
			
			ss_n					=> spi_ss_n,
			sclk					=> spi_clk,
			mosi					=> spi_mosi,
			miso					=> spi_miso,
	
			r_sdcr				=> reg_sdcr,
			r_stbycr				=> reg_stbycr,
			r_stbkcr				=> reg_stbkcr,
			r_sdsr				=> reg_sdsr,
			r_mtbycr				=> reg_mtbycr,
			r_mtbkcr				=> reg_mtbkcr,
			r_mrbs				=> reg_mrbs,
			r_srbs				=> reg_srbs
	);

	
-- DIP switch to set PBI address
-- address is set as binary value 1-8 and translated to single bit select
process (dip_sw)
begin
	if (dip_sw = "00001") then
		PBI_ADDR <= X"01";
	elsif (dip_sw = "00010") then
		PBI_ADDR <= X"02";
	elsif (dip_sw = "00011") then
		PBI_ADDR <= X"04";
	elsif (dip_sw = "00100") then
		PBI_ADDR <= X"08";
	elsif (dip_sw = "00101") then
		PBI_ADDR <= X"10";
	elsif (dip_sw = "00110") then
		PBI_ADDR <= X"20";
	elsif (dip_sw = "00111") then
		PBI_ADDR <= X"40";
	elsif (dip_sw = "01000") then
		PBI_ADDR <= X"80";
	else
		PBI_ADDR <= X"00";
	end if;
end process;
	
-- LED outputs from latch
process (led_latch)
begin
	n_led1 <= NOT led_latch(0);
	n_led2 <= NOT led_latch(1);
	n_led3 <= NOT led_latch(2);
	n_led4 <= NOT led_latch(3);
	n_led5 <= NOT led_latch(4);
end process;

-- fast clock state machine, active when PHI2 is high
-- >> starts flash read process (data is available up when flash_read_valid is 1, several fast clock cycles later)
-- >> creates a delayed signal a fixed amount after PHI2 goes high (falling edge of this signal used to latch data from Atari)
--    the rising edge of the early_phi2 signal is a clock period later than the real rising edge of PHI2
process (phi2, clk_57, dev_rom_act, rw_latch, n_reset, master_ram_wren, master_ram_rden, slave_ram_wren, slave_ram_rden)
begin
	if (n_reset = '0') then
		clk_counter <= "0000";
		phi2_early <= '0';
		flash_read <= '0';
		master_ram_clk <= '0';
		slave_ram_clk <= '0';
	else
		if (phi2 = '0') then
			-- counter only runs when PHI2 is high
			clk_counter <= "0000";
			phi2_early <= '0';
			master_ram_clk <= '0';
			slave_ram_clk <= '0';
		elsif (rising_edge(clk_57)) then
			if (clk_counter = "0001") then
				if (hw_sel = PBI_ADDR AND dev_rom_act AND rw_latch = '1') then 
				-- start the read from ALTUFM for a PBI ROM read access
				-- this is turned off next tick of clk_counter (possibly by the 'else' at bottom of process)
					flash_read <= '1';
				else
					-- not a ROM access or not a read of the ROM space
					flash_read <= '0';
				end if;
				
				phi2_early <= '1';
				master_ram_clk <= '0';
				
				clk_counter <= clk_counter + 1;
				
			elsif (clk_counter = "0010" OR clk_counter = "0100") then
				phi2_early <= '1';
				flash_read <= '0';
			
				-- generate two read clocks for master/slave RAM (trigger on clk_counter=val, clk_counter=val+2)
				-- (this is because synchronous 'q' output lags behind one clock cycle)
				if (master_ram_rden = '1') then
					master_ram_clk <= '1';
				else
					master_ram_clk <= '0';
				end if;
				
				if (slave_ram_rden = '1') then
					slave_ram_clk <= '1';
				else
					slave_ram_clk <= '0';
				end if;
				
				clk_counter <= clk_counter + 1;

			elsif (clk_counter = "1100") then
				-- this is the 'early' falling edge for latching data from Atari
				phi2_early <= '0';
				flash_read <= '0';
				
				if (master_ram_wren = '1') then
					master_ram_clk <= '1';
				else
					master_ram_clk <= '0';
				end if;
				
				if (slave_ram_wren = '1') then
					slave_ram_clk <= '1';
				else
					slave_ram_clk <= '0';
				end if;

				-- count stops here
				
			else
				-- initial clk_counter state and all others
				flash_read <= '0';
				phi2_early <= '1';
				master_ram_clk <= '0';
				slave_ram_clk <= '0';
				clk_counter <= clk_counter + 1;
			end if;
		end if;
	end if;
end process;


-- look for valid read from ALTUFM and latch in the data on falling edge of fast clock
-- per timing diagram from ALTUFM data sheet, this should happen ~4 fast clocks after we requested the read
process (phi2, clk_57, flash_read_valid)
begin
	if (phi2 = '1') then
		if (flash_read_valid = '1' AND falling_edge(clk_57)) then
			flash_data_latch <= flash_data;
		end if;
	else
		flash_data_latch <= (OTHERS => '1');
	end if;

end process;


-- create output pins for the Master Buffer Full and Slave Data Available register bits
-- these connect to ESP32 inputs and may trigger interrupts
process (reg_sdcr, n_reset)
begin
	if (n_reset = '0') then
		spi_mbf <= '0';
		spi_sdav <= '0';
	else
		spi_mbf <= reg_sdcr(1);
		spi_sdav <= reg_sdcr(0);
	end if;
end process;


-- main body of Atari bus logic including address mapping and read/write operations
process (n_reset, phi2, phi2_early, rw, rw_latch, hw_sel, addr_latch, dev_rom_act, hw_sel_act,
			dev_reg_act, addr, data, flash_data_latch, PBI_ADDR, reg_sdcr, reg_stbycr, reg_stbkcr, reg_sdsr, reg_mtbycr,
			reg_mtbkcr, reg_mrbs, reg_srbs, reg_fbs, master_ram_rden, master_ram_wren, master_dout,
			slave_ram_rden, slave_ram_wren, slave_dout)
begin
	if (n_reset = '0') then
		n_rdy <= '1';
		n_irq <= '1';
		n_mpd <= '1';
		n_extsel <= '1';
		n_data_oe <= '1';
		data_dir <= '1';
		hw_sel <= X"00";
		addr_latch <= X"FFFF";
		rw_latch <= '0';
		dev_rom_act <= false;
		hw_sel_act <= false;
		dev_reg_act <= false;
		master_ram_rden <= '0';
		master_ram_wren <= '0';
		slave_ram_rden <= '0';
		slave_ram_wren <= '0';
		
		reg_sdcr <= X"00";
		reg_stbycr <= X"00";
		reg_stbkcr <= X"00";
		reg_mrbs <= X"00";
		reg_srbs <= X"00";
		reg_fbs <= X"00";
				
		data <= "ZZZZZZZZ";
		led_latch <= "00000";
	else
		-- not using rdy or irq at the moment, leave them high
		n_rdy <= '1';
		n_irq <= '1';
	
		-- turn on LED5 when PBI device is active
		if (hw_sel = PBI_ADDR) then
			led_latch(4) <= '1';
		else
			led_latch(4) <= '0';
		end if;
		
		if (rising_edge(phi2)) then
			-- latch in address bus and the rw signal on the rising edge of phi2
			-- apparently in some cases the address lines and rw signals of the Atari may not be stable all the way until falling edge
			-- of PHI2.  there is some speculation whether this is only on ANTIC access.  at any rate, latching it here allows it to stay
			-- stable for entirety of time when PHI2=1
			addr_latch <= addr;
			rw_latch <= rw;

			-- create some address select booleans for different ranges
			-- using 'addr' and not 'addr_latch' because data may not be latched yet at rising edge of PHI2
			-- but we trust addr to be stable
			dev_rom_act <= (addr >= X"D800" AND addr <= X"DFFF");
			dev_reg_act <= (addr >= X"D100" AND addr <= X"D1FE");
			hw_sel_act <= (addr = X"D1FF");
			
			-- set data bus transceiver direction and output enables on rising edge of phi2
			if ((hw_sel = PBI_ADDR AND addr >= X"D800" AND addr <= X"DFFF") OR
				 (hw_sel = PBI_ADDR AND addr >= X"D600" AND addr <= X"D7FF") OR
				 (hw_sel = PBI_ADDR AND addr >= X"D100" AND addr <= X"D1FE") OR
				 (addr = X"D1FF")) then
				
				-- this is a state where this PBI device is specifically being addressed, or the global hw_sel register is being addressed
				-- set up the external bus transceiver to point the right way and enable its output
				data_dir <= NOT rw;
			else
				-- this is any other access, point the external bus transceiver into the FPGA, enable its output
				data_dir <= '1';
			end if;
		end if;

		if (phi2 = '1') then
			if (hw_sel = PBI_ADDR AND addr_latch >= X"D600" AND addr_latch <= X"D6FF") then
				master_ram_rden <= rw_latch;
				master_ram_wren <= NOT rw_latch;
			else
				master_ram_rden <= '0';
				master_ram_wren <= '0';
			end if;
			
			if (hw_sel = PBI_ADDR AND addr_latch >= X"D700" AND addr_latch <= X"D7FF") then
				slave_ram_rden <= rw_latch;
				slave_ram_wren <= NOT rw_latch;
			else
				slave_ram_rden <= '0';
				slave_ram_wren <= '0';
			end if;
		else
			master_ram_rden <= '0';
			master_ram_wren <= '0';
			slave_ram_rden <= '0';
			slave_ram_wren <= '0';
		end if;
		
		
		if (phi2 = '1' AND rw_latch = '1' AND hw_sel = PBI_ADDR) then
			-- READ of an address in our PBI device address space
			if (dev_rom_act) then
				-- device ROM
				n_mpd <= '0';
				n_extsel <= '0';
				n_data_oe <= '0';

				-- unpack the 32-bit word from the flash read and output it on data bus
				if (addr_latch(1 downto 0) = "11") then
					data <= flash_data_latch(31 downto 24);
				elsif (addr_latch(1 downto 0) = "10") then
					data <= flash_data_latch(23 downto 16);
				elsif (addr_latch(1 downto 0) = "01") then
					data <= flash_data_latch(15 downto 8);
				else
					data <= flash_data_latch(7 downto 0);
				end if;
				
			elsif (dev_reg_act) then 
				-- device registers
				n_mpd <= '0';
				n_extsel <= '0';
				n_data_oe <= '0';
				
				if (addr_latch = X"D100") then
					data <= reg_sdcr;
				elsif (addr_latch = X"D101") then
					data <= reg_stbycr;
				elsif (addr_latch = X"D102") then
					data <= reg_stbkcr;
				elsif (addr_latch = X"D110") then
					data <= reg_sdsr;
				elsif (addr_latch = X"D111") then
					data <= reg_mtbycr;
				elsif (addr_latch = X"D112") then
					data <= reg_mtbkcr;
				elsif (addr_latch = X"D120") then
					data <= reg_mrbs;
				elsif (addr_latch = X"D121") then
					data <= reg_srbs;
				elsif (addr_latch = X"D122") then
					data <= reg_fbs;
				else
					data <= X"FF";
				end if;
			elsif (master_ram_rden = '1') then
				-- SPI master dual port RAM window
				n_mpd <= '0';
				n_extsel <= '0';
				n_data_oe <= '0';

				data <= master_dout;
			elsif (slave_ram_rden = '1') then
				-- SPI slave dual port RAM window
				n_mpd <= '0';
				n_extsel <= '0';
				n_data_oe <= '0';

				data <= slave_dout;
			else 
				n_data_oe <= '1';
				n_mpd <= '1';
				n_extsel <= '1';
				data <= "ZZZZZZZZ";
			end if;
		else
			n_data_oe <= rw_latch;
			data <= "ZZZZZZZZ";
			n_mpd <= '1';
			n_extsel <= '1';
		end if;
		
		
		if (rw_latch = '0') then
			-- WRITE to an address in our PBI device address space (or hw_sel)

			if (falling_edge(phi2_early)) then
				-- use the falling edge of the internally generated early_phi2 signal
				if (hw_sel_act) then
					-- hw_sel register write (latched on falling edge of phi2_early)
					hw_sel <= data;
					
				elsif (hw_sel = PBI_ADDR) then 
					--if (master_ram_wren = '1') then
						-- master RAM write (latched on falling edge of phi2_early)
						--master_din <= data;
					--elsif (slave_ram_wren = '1') then
						-- slave RAM write (latched on falling edge of phi2_early)
						--slave_din <= data;
					if (dev_reg_act) then
						-- device register write (latched on falling edge of phi2_early)
						if (addr_latch = X"D100") then
							reg_sdcr <= data;
						elsif (addr_latch = X"D101") then
							reg_stbycr <= data;
						elsif (addr_latch = X"D102") then
							reg_stbkcr <= data;
						elsif (addr_latch = X"D120") then
							reg_mrbs <= data;
						elsif (addr_latch = X"D121") then
							reg_srbs <= data;
						elsif (addr_latch = X"D122") then
							reg_fbs <= data;
						elsif (addr_latch = X"D130") then
							led_latch(3 downto 0) <= data(3 downto 0);
						end if;
					end if;
				end if;
			end if;
		end if;
	end if;
	
end process;




END behavior;
