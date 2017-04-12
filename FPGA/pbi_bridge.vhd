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
		n_led1		: OUT		std_logic;
		n_led2		: OUT		std_logic;
		n_led3		: OUT		std_logic;
		n_led4		: OUT		std_logic;
		n_led5		: OUT		std_logic;
		clk_57		: IN		std_logic;								-- 57.28MHz clock oscillator (32 * PHI2)
		phi2_early	: BUFFER	std_logic;								-- shortened PHI2 cycle completion signal
		phi2			: IN		std_logic;								-- Atari PHI2 clock (1.79MHz NTSC, 1.77MHz PAL)
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
	SIGNAL dev_reg_act : boolean;
	SIGNAL dev_ram_act : boolean;
	SIGNAL dev_rom_act : boolean;
	SIGNAL hw_sel_act : boolean;

	-- latch to hold PBI device select register
	SIGNAL hw_sel : std_logic_vector(7 downto 0) := X"00";
	
	-- constant to hold our device address in hw_sel (single bit set)
	CONSTANT PBI_ADDR : std_logic_vector(7 downto 0) := X"80";

	-- counter used to tick off cycles of the 50MHz clock after rising edge of PHI2
	SIGNAL clk_counter : std_logic_vector(3 downto 0);
	
	-- latch used to hold LED values
	SIGNAL led_latch : std_logic_vector(3 downto 0) := X"0";

	
	SIGNAL flash_read : std_logic := '0';
	SIGNAL flash_read_valid : std_logic := '0';
	SIGNAL flash_data : std_logic_vector(31 downto 0) := X"FFFFFFFF";
	SIGNAL flash_data_latch : std_logic_vector(31 downto 0) := X"FFFFFFFF";
	SIGNAL flash_bank : std_logic_vector(5 downto 0) := "000000";
	SIGNAL flash_addr : std_logic_vector(14 downto 0) := "000000000000000";
	
	
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


u0 : component pbi_rom
	port map (
		clock                   => clk_57,                   				--    clk.clk
		reset_n                 => n_reset,                 				-- nreset.reset_n
		avmm_data_addr(14 downto 9)   => flash_bank, 						--   data.address (64 banks)
		avmm_data_addr(8 downto 0)   => addr_latch(10 downto 2),   		--   data.address (512 x 32-bit words bank size)
		avmm_data_read          => flash_read,          					--       .read
		avmm_data_readdata      => flash_data,     					--       .readdata
--		avmm_data_waitrequest   => CONNECTED_TO_avmm_data_waitrequest,   --       .waitrequest
		avmm_data_readdatavalid => flash_read_valid, 						--       .readdatavalid
		avmm_data_burstcount    => X"1"     									--      .burstcount
	);


process (led_latch)
begin
	n_led1 <= NOT led_latch(0);
	n_led2 <= NOT led_latch(1);
	n_led3 <= NOT led_latch(2);
	n_led4 <= NOT led_latch(3);
end process;

-- create a delayed signal a fixed amount after PHI2 goes high
-- the falling edge of this signal is used to latch data from the Atari into FPGA
process (phi2, clk_57, dev_rom_act, rw_latch)
begin
	if (phi2 = '0') then
		-- counter only runs when PHI2 is '1'
		clk_counter <= "0000";
		phi2_early <= '0';
	elsif (rising_edge(clk_57)) then
		if (clk_counter = "0001") then
			
			if (dev_rom_act AND rw_latch = '1') then 
				flash_read <= '1';
			else
				flash_read <= '0';
			end if;
			
			phi2_early <= '1';
		elsif (clk_counter = "1100") then
			phi2_early <= '0';
		else
			flash_read <= '0';
			phi2_early <= '1';
			clk_counter <= clk_counter + 1;
		end if;
	end if;
end process;

process (clk_57, flash_read_valid)
begin
	if (falling_edge(clk_57) AND flash_read_valid = '1') then
		flash_data_latch <= flash_data;
	end if;

end process;


process (n_reset, phi2, phi2_early, rw_latch, hw_sel, addr_latch, dev_rom_act, dev_ram_act, hw_sel_act, dev_reg_act, addr, data, flash_data_latch)
begin
	-- TODO: reset!

	-- not using these at the moment, leave them high
	n_rdy <= '1';
	n_irq <= '1';
	
	
	if (hw_sel = PBI_ADDR) then
		n_led5 <= '0';
	else
		n_led5 <= '1';
	end if;
	
	if (rising_edge(phi2)) then
		-- latch in address bus and the rw signal on the rising edge of phi2
		addr_latch <= addr;
		rw_latch <= rw;

		dev_rom_act <= (addr >= X"D800" AND addr <= X"E031");
		dev_ram_act <= (addr >= X"D600" AND addr <= X"D7FF");
		hw_sel_act <= (addr = X"D1FF");
		dev_reg_act <= (addr >= X"D100" AND addr <= X"D1FE");

		-- set data bus transceiver direction and output enables on rising edge of phi2
		if ((hw_sel = PBI_ADDR AND addr >= X"D800" AND addr <= X"E031") OR
			 (hw_sel = PBI_ADDR AND addr >= X"D600" AND addr <= X"D7FF") OR
			 (hw_sel = PBI_ADDR AND addr >= X"D100" AND addr <= X"D1FE") OR
			 (addr = X"D1FF")) then
			
			-- this is a state where our PBI device is specifically being addressed, or the global hw_sel register is being addressed
			-- set up the external bus transceiver to point the right way and enable its output
			data_dir <= NOT rw;
		else
			-- this is any other access, point the external bus transceiver into the FPGA, enable its output
			data_dir <= '1';
		end if;
	end if;

	
	if (phi2 = '1' AND rw_latch = '1' AND hw_sel = PBI_ADDR) then
		-- READ of an address in our PBI device address space
		-- (note: these are test outputs, they will eventually be connected to registers/buffers/ROM)
		if (dev_reg_act) then 
			-- device registers
			n_mpd <= '1';
			n_extsel <= '0';
			n_data_oe <= '0';
			data <= X"22";
		elsif (dev_ram_act) then
			-- device RAM (buffers)
			n_mpd <= '1';
			n_extsel <= '0';
			n_data_oe <= '0';
	
			data <= addr_latch(15 downto 8);

		elsif (dev_rom_act) then
			-- device ROM
			n_mpd <= '0';
			n_extsel <= '0';
			n_data_oe <= '0';

			-- unpack the 32-bit word from the flash read
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

		-- set data bus hi-Z so we can actually read from it
		--data <= "ZZZZZZZZ";
		
		if (falling_edge(phi2_early)) then
			if (hw_sel_act) then
				-- hw_sel register write (latched on falling edge of phi2_early)
				hw_sel <= data;
			
			elsif (dev_reg_act  AND hw_sel = PBI_ADDR) then
				-- device register write (latched on falling edge of phi2)
				led_latch <= data(3 downto 0);
				
	--		elsif (dev_ram_act AND hw_sel = PBI_ADDR) then
				-- TODO: device RAM (buffer) write (latched on falling edge of phi2)
			end if;
		end if;
	end if;
	
end process;




END behavior;
