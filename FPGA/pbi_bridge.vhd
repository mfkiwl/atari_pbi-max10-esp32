library ieee;
use ieee.std_logic_1164.all;

entity pbi_bridge is
	PORT(
		phi2			: IN		std_logic;								-- Atari PHI2 clock (1.79MHz NTSC, 1.77MHz PAL)
		rw				: IN		std_logic;								-- latched read/write (1=Atari reading RAM/device, 0=Atari writing RAM/device)
		addr			: IN 		std_logic_vector (15 downto 0);	-- address bus
		data			: INOUT	std_logic_vector (7 downto 0);	-- data bus, via bus transceiver controlled with data_dir and n_data_oe
		data_dir		: OUT		std_logic := '1';						-- data bus transceiver direction control (1=Atari->FPGA)
		n_data_oe	: OUT		std_logic := '1';						-- data bus output enable (0=enabled)
		n_reset		: IN		std_logic								-- reset signal from Atari (0=reset)
--		extenb		: IN		std_logic;								-- EXTernal ENaBLe, Atari sets this to 1 for PBI device access
--		n_extsel		: OUT		std_logic;								-- EXTernal SELect, must set this to 0 to disable Atari internal RAM during PBI access
--		n_mpd			: OUT		std_logic;								-- Math Pack Disable, must set this to 0 to disable Atari floating point ROM (D800-D81C)		
--		n_irq			: OUT		std_logic;								-- Interrupt ReQuest line (requires handshaking on D1FF to identify IRQ source)
--		n_rdy			: OUT		std_logic;								-- Briefly stop CPU (use with extreme caution, ANTIC already uses this)
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
	SIGNAL dev_reg_act : boolean;
	SIGNAL dev_ram_act : boolean;
	SIGNAL dev_rom_act : boolean;
	SIGNAL hw_sel_act : boolean;

	-- latch to hold PBI device select register
	SIGNAL hw_sel : std_logic_vector(7 downto 0) := X"00";
	
	-- constant to hold our device address in hw_sel (single bit set)
	CONSTANT PBI_ADDR : std_logic_vector(7 downto 0) := X"80";
BEGIN

process (n_reset, phi2, rw_latch, hw_sel, addr_latch, dev_rom_act, dev_ram_act, hw_sel_act, dev_reg_act, data)
begin
	-- TODO: reset!

	dev_rom_act <= (addr_latch >= X"D800" AND addr_latch <= X"D81C");
	dev_ram_act <= (addr_latch >= X"D600" AND addr_latch <= X"D7FF");
	hw_sel_act <= (addr_latch = X"D1FF");
	dev_reg_act <= (addr_latch >= X"D100" AND addr_latch <= X"D1FE");

	if (rising_edge(phi2)) then
		-- latch in address bus and the rw signal on the rising edge of phi2
		addr_latch <= addr;
		rw_latch <= rw;

		-- set data bus transceiver direction and output enables on rising edge of phi2
		if ((hw_sel = PBI_ADDR AND addr >= X"D800" AND addr <= X"D81C") OR
			 (hw_sel = PBI_ADDR AND addr >= X"D600" AND addr <= X"D7FF") OR
			 (hw_sel = PBI_ADDR AND addr >= X"D100" AND addr <= X"D1FE") OR
			 (addr = X"D1FF")) then
			
			-- this is a state where our PBI device is specifically being addressed, or the global hw_sel register is being addressed
			-- set up the external bus transceiver to point the right way and enable its output
			data_dir <= NOT rw;
			n_data_oe <= '0';
		else
			-- this is any other access, point the external bus transceiver into the FPGA, disable its output
			data_dir <= '1';
			n_data_oe <= '1';
		end if;
	end if;

	
	if (rw_latch = '1' AND hw_sel = PBI_ADDR) then
		-- READ of an address in our PBI device address space
		-- (note: these are test outputs, they will eventually be connected to registers/buffers/ROM)
		if (dev_reg_act) then 
			-- device registers
			data <= X"22";
		elsif (dev_ram_act) then
			-- device RAM (buffers)
			data <= X"99";
		elsif (dev_rom_act) then
			-- device ROM
			data <= X"CC";
		end if;
	end if;
	
	if (rw_latch = '0') then
		-- WRITE to an address in our PBI device address space (or hw_sel)

		-- set data bus hi-Z so we can actually read from it
		data <= "ZZZZZZZZ";
		
		if (hw_sel_act AND falling_edge(phi2)) then
			-- hw_sel register write (latched on falling edge of phi2)
			hw_sel <= data;
--		else if (dev_reg_act AND falling_edge(phi2)) then
			-- TODO: device register write (latched on falling edge of phi2)
--		else if (dev_ram_act AND falling_edge(phi2)) then
			-- TODO: device RAM (buffer) write (latched on falling edge of phi2)
		end if;
	end if;
	
end process;




END behavior;
