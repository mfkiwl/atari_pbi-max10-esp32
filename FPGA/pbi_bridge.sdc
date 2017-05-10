##############################################################################
# define 1.79MHz clock phi2
create_clock -name {phi2_clk} -period 558.000 [get_ports { phi2 }]

# 'early' phi2 clock (internally generated)
create_clock -name {phi2_early} -period 558.000 [get_ports { phi2_early }]

# define 57.28MHz clock
create_clock -name {clk_57} -period 17.458 [get_ports { clk_57 }]

# SPI clock
create_clock -name {spi_clk} -period 50.0 [get_ports { spi_clk }]


set_false_path -from phi2_clk -to clk_57

derive_clock_uncertainty

