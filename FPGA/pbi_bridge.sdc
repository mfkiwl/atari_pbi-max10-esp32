##############################################################################
# define 1.79MHz clock phi2
create_clock -name {phi2_clk} -period 558.000 [get_ports { phi2 }]

derive_clock_uncertainty

