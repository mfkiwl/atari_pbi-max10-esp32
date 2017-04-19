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
		n_rdy			: OUT		std_logic := '1'						-- Briefly stop CPU (use with extreme caution, ANTIC already uses this)
	);
end pbi_bridge;


ARCHITECTURE behavior OF pbi_bridge IS
	-- latch to hold address
	SIGNAL addr_latch : std_logic_vector(15 downto 0) := X"0000";
	-- latch to hold rw signal
	SIGNAL rw_latch : std_logic := '0';
	
	-- various device address ranges active, and special PBI hw_sel address active
	-- 0xD800 - 0xD81C : PBI DEVICE ROM SPACE
	-- 0xD600 - 0xD7FF : PBI DEVICE RAM SPACE
	-- 0xD1FF          : HW_SEL REGISTER
	-- 0xD100 - 0xD1FE : PBI DEVICE REGISTERS
	SIGNAL dev_reg_act : boolean := false;
	SIGNAL dev_ram_act : boolean := false;
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
	SIGNAL flash_data : std_logic_vector(31 downto 0) := X"FFFFFFFF";
	SIGNAL flash_data_latch : std_logic_vector(31 downto 0) := X"FFFFFFFF";
	SIGNAL flash_bank : std_logic_vector(5 downto 0) := "000000";
	SIGNAL flash_addr : std_logic_vector(14 downto 0) := "000000000000000";
	
	-- Altera ALTUFM component for PBI Flash ROM space
	component pbi_rom is
		port (
			clock                   : in  std_logic                     := 'X';             -- clk
			reset_n                 : in  std_logic                     := 'X';             -- reset_n
			avmm_data_addr          : in  std_logic_vector(14 downto 0) := (others => 'X'); -- address
			avmm_data_read          : in  std_logic                     := 'X';             -- read
			avmm_data_readdata      : out std_logic_vector(31 downto 0);                    -- readdata
			avmm_data_waitrequest   : out std_logic;                                        -- waitrequest
			avmm_data_readdatavalid : out std_logic;                                        -- readdatavalid
			avmm_data_burstcount    : in  std_logic_vector(3 downto 0)  := (others => 'X')  -- burstcount
		);
	end component pbi_rom;

BEGIN

-- Altera ALTUFM signal & pin mapping
u0 : component pbi_rom
	port map (
		clock                   		=> clk_57,             				-- clk
		reset_n                 		=> n_reset,            				-- reset
		avmm_data_addr(14 downto 9)   => flash_bank, 						-- data.address[14:9] (64 total 512 x 32-bit banks selectable)
		avmm_data_addr(8 downto 0)   	=> addr_latch(10 downto 2),  		-- data.address[ 8:0] (512 x 32-bit words bank size)
		avmm_data_read          		=> flash_read,      					-- start read signal
		avmm_data_readdata      		=> flash_data,  						-- flash data bus
		avmm_data_readdatavalid 		=> flash_read_valid, 				-- flash data read is valid
		avmm_data_burstcount    		=> X"1"   								-- burstcount (set to 1 for parallel access)
	);


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
process (phi2, clk_57, dev_rom_act, rw_latch, n_reset)
begin
	if (n_reset = '0') then
		clk_counter <= "0000";
		phi2_early <= '0';
		flash_read <= '0';
	else
		if (phi2 = '0') then
			-- counter only runs when PHI2 is high
			clk_counter <= "0000";
			phi2_early <= '0';
		elsif (rising_edge(clk_57)) then
			if (clk_counter = "0001") then
				if (dev_rom_act AND rw_latch = '1') then 
				-- start the read from ALTUFM for a ROM read access
				-- this is turned off next tick of clk_counter by the 'else' at bottom of process
					flash_read <= '1';
				else
					-- not a ROM access or not a read of the ROM space
					flash_read <= '0';
				end if;
				
				phi2_early <= '1';
				
				clk_counter <= clk_counter + 1;
			elsif (clk_counter = "1100") then
				-- this is the 'early' falling edge for latching data from Atari
				phi2_early <= '0';
				flash_read <= '0';
			else
				-- initial clk_counter state and all others
				flash_read <= '0';
				phi2_early <= '1';
				clk_counter <= clk_counter + 1;
			end if;
		end if;
	end if;
end process;


-- look for valid read from ALTUFM and latch in the data on falling edge of fast clock
-- per timing diagram from ALTUFM data sheet, this should happen ~4 fast clocks after we requested the read
process (clk_57, flash_read_valid)
begin
	if (falling_edge(clk_57) AND flash_read_valid = '1') then
		flash_data_latch <= flash_data;
	end if;

end process;


process (n_reset, phi2, phi2_early, rw, rw_latch, hw_sel, addr_latch, dev_rom_act, dev_ram_act, hw_sel_act, dev_reg_act, addr, data, flash_data_latch)
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
		dev_ram_act <= false;
		hw_sel_act <= false;
		dev_reg_act <= false;
		
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
			dev_ram_act <= (addr >= X"D600" AND addr <= X"D7FF");
			hw_sel_act <= (addr = X"D1FF");
			dev_reg_act <= (addr >= X"D100" AND addr <= X"D1FE");

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

		
		if (phi2 = '1' AND rw_latch = '1' AND hw_sel = PBI_ADDR) then
			-- READ of an address in our PBI device address space
			if (dev_reg_act) then 
				-- device registers
				n_mpd <= '1';
				n_extsel <= '1';
				n_data_oe <= '1';			-- temporarily disabled
				-- (note: test output, will eventually be connected to registers)
				data <= X"22";
			elsif (dev_ram_act) then
				-- device RAM
				n_mpd <= '1';
				n_extsel <= '1';
				n_data_oe <= '1';			-- temporarily disabled
		
				-- (note: test output, will eventually be connected to RAM)
				data <= X"44";
			elsif (dev_rom_act) then
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
				
				elsif (dev_reg_act  AND hw_sel = PBI_ADDR) then
					-- device register write (latched on falling edge of phi2_early)
					led_latch(3 downto 0) <= data(3 downto 0);
					
		--		elsif (dev_ram_act AND hw_sel = PBI_ADDR) then
					-- TODO: device RAM (buffer) write (latched on falling edge of phi2_early)
				end if;
			end if;
		end if;
	end if;
	
end process;




END behavior;
