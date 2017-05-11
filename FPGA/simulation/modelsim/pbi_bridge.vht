                                                           
-- VHDL Test Bench template for design  :  pbi_bridge
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

-- SEE http://www.alterawiki.com/wiki/File:Testbenches_public.pptx


LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY pbi_bridge_vhd_tst IS
END pbi_bridge_vhd_tst;
ARCHITECTURE pbi_bridge_arch OF pbi_bridge_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addr : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL clk_57 : STD_LOGIC := '0';
SIGNAL data : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL data_dir : STD_LOGIC;
SIGNAL dip_sw : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL extenb : STD_LOGIC;
SIGNAL n_data_oe : STD_LOGIC;
SIGNAL n_extsel : STD_LOGIC;
SIGNAL n_irq : STD_LOGIC;
SIGNAL n_led1 : STD_LOGIC;
SIGNAL n_led2 : STD_LOGIC;
SIGNAL n_led3 : STD_LOGIC;
SIGNAL n_led4 : STD_LOGIC;
SIGNAL n_led5 : STD_LOGIC;
SIGNAL n_mpd : STD_LOGIC;
SIGNAL n_rdy : STD_LOGIC;
SIGNAL n_reset : STD_LOGIC := '0';
SIGNAL phi2 : STD_LOGIC := '0';
SIGNAL phi2_early : STD_LOGIC;
SIGNAL rw : STD_LOGIC;
SIGNAL spi_clk : STD_LOGIC := '0';
SIGNAL spi_miso : STD_LOGIC;
SIGNAL spi_mosi : STD_LOGIC;
SIGNAL spi_ss_n : STD_LOGIC := '1';



COMPONENT pbi_bridge
	PORT (
	addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	clk_57 : IN STD_LOGIC;
	data : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	data_dir : BUFFER STD_LOGIC;
	dip_sw : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	extenb : IN STD_LOGIC;
	n_data_oe : BUFFER STD_LOGIC;
	n_extsel : BUFFER STD_LOGIC;
	n_irq : BUFFER STD_LOGIC;
	n_led1 : BUFFER STD_LOGIC;
	n_led2 : BUFFER STD_LOGIC;
	n_led3 : BUFFER STD_LOGIC;
	n_led4 : BUFFER STD_LOGIC;
	n_led5 : BUFFER STD_LOGIC;
	n_mpd : BUFFER STD_LOGIC;
	n_rdy : BUFFER STD_LOGIC;
	n_reset : IN STD_LOGIC;
	phi2 : IN STD_LOGIC;
	phi2_early : BUFFER STD_LOGIC;
	rw : IN STD_LOGIC;
	spi_clk : IN STD_LOGIC;
	spi_miso : BUFFER STD_LOGIC;
	spi_mosi : IN STD_LOGIC;
	spi_ss_n : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : pbi_bridge
	PORT MAP (
-- list connections between master ports and signals
	addr => addr,
	clk_57 => clk_57,
	--data => data,
	data_dir => data_dir,
	dip_sw => dip_sw,
	extenb => extenb,
	n_data_oe => n_data_oe,
	n_extsel => n_extsel,
	n_irq => n_irq,
	n_led1 => n_led1,
	n_led2 => n_led2,
	n_led3 => n_led3,
	n_led4 => n_led4,
	n_led5 => n_led5,
	n_mpd => n_mpd,
	n_rdy => n_rdy,
	n_reset => n_reset,
	phi2 => phi2,
	phi2_early => phi2_early,
	rw => rw,
	spi_clk => spi_clk,
	spi_miso => spi_miso,
	spi_mosi => spi_mosi,
	spi_ss_n => spi_ss_n
	);
	
	-- create 10MHz spi clock
	spi_clk <= not spi_clk after 100 ns;
	
	-- create 1.79MHz PHI2
	phi2 <= not phi2 after 558.659 ns;

	-- create 57MHz PHI2*32
	clk_57 <= not clk_57 after 17.458 ns;

	n_reset <= '1' after 1.5 us;
	
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;


stimulus : PROCESS

	procedure p_stable is
	begin	
		spi_mosi <= '0';
		spi_ss_n <= '1';
		WAIT UNTIL n_reset = '1';
	end procedure p_stable;

	procedure p_sync(constant c_loop : integer) is
		variable i: integer := 0;
	begin
		loop1: WHILE i <= c_loop LOOP
			WAIT UNTIL spi_clk'event AND spi_clk = '1';
			i := i + 1;
		END LOOP loop1;
	end p_sync;

	procedure spi_put_byte(constant b : std_logic_vector(7 downto 0)) is
		variable i: integer := 0;
	begin
		loop1: WHILE i <= 7 LOOP
			WAIT UNTIL spi_clk'event AND spi_clk = '0';
			spi_mosi <= b(i);
			i := i + 1;
		END LOOP loop1;
	end spi_put_byte;

	procedure spi_write_ram_pattern is
		variable i: integer := 0;
		variable b: std_logic_vector(7 downto 0) := (OTHERS => '0');
	begin
		loop1: WHILE i <= 255 LOOP
			spi_put_byte(b);
			i := i + 1;
			b := b + 1;
		END LOOP loop1;
		
		-- finish SPI bus cycle
		WAIT UNTIL spi_clk'event AND spi_clk = '0';
		WAIT FOR 5 ns;
	end spi_write_ram_pattern;


BEGIN
	p_stable;
	spi_ss_n <= '0';
	spi_put_byte(X"03"); -- sdsr
	spi_put_byte(X"00"); -- mtbycr
	spi_put_byte(X"80"); -- mtbkcr
	spi_put_byte(X"00"); -- s_wr_bank
	spi_put_byte(X"00"); -- s_rd_bank
	spi_write_ram_pattern;
	spi_ss_n <= '1';
	p_sync(8);
	
	assert false report "--- END OF SIMULATION ---"
	severity failure;

END PROCESS stimulus;

END pbi_bridge_arch;
