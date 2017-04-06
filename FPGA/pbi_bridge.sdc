##############################################################################
# define 1.79MHz clock phi2
create_clock -name {phi2_clk} -period 558.000 [get_ports { phi2 }]

# define 50MHz clock
create_clock -name {clk_50} -period 20.000 [get_ports { clk_50 }]

derive_clock_uncertainty

