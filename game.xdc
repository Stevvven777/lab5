# EGo1 v2.2 / xc7a35tcsg324-1. All outputs are active high.
# Source: https://e-elements.readthedocs.io/zh/ego1_v2.2/EGo1.html
# seg_out[6:0] = {a,b,c,d,e,f,g}. Pure combinational design.

# SW7
set_property PACKAGE_PIN P5 [get_ports {p1[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {p1[1]}]

# SW6
set_property PACKAGE_PIN P4 [get_ports {p1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {p1[0]}]

# SW1
set_property PACKAGE_PIN N4 [get_ports {p2[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {p2[1]}]

# SW0
set_property PACKAGE_PIN R1 [get_ports {p2[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {p2[0]}]

# LD2_7: player 1 wins
set_property PACKAGE_PIN F6 [get_ports {o[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o[2]}]

# LD2_4: draw
set_property PACKAGE_PIN J4 [get_ports {o[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o[1]}]

# LD2_0: player 2 wins
set_property PACKAGE_PIN K2 [get_ports {o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o[0]}]

# A0
set_property PACKAGE_PIN B4 [get_ports {seg_out1[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out1[6]}]

# B0
set_property PACKAGE_PIN A4 [get_ports {seg_out1[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out1[5]}]

# C0
set_property PACKAGE_PIN A3 [get_ports {seg_out1[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out1[4]}]

# D0
set_property PACKAGE_PIN B1 [get_ports {seg_out1[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out1[3]}]

# E0
set_property PACKAGE_PIN A1 [get_ports {seg_out1[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out1[2]}]

# F0
set_property PACKAGE_PIN B3 [get_ports {seg_out1[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out1[1]}]

# G0
set_property PACKAGE_PIN B2 [get_ports {seg_out1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out1[0]}]

# A1
set_property PACKAGE_PIN D4 [get_ports {seg_out2[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out2[6]}]

# B1
set_property PACKAGE_PIN E3 [get_ports {seg_out2[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out2[5]}]

# C1
set_property PACKAGE_PIN D3 [get_ports {seg_out2[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out2[4]}]

# D1
set_property PACKAGE_PIN F4 [get_ports {seg_out2[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out2[3]}]

# E1
set_property PACKAGE_PIN F3 [get_ports {seg_out2[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out2[2]}]

# F1
set_property PACKAGE_PIN E2 [get_ports {seg_out2[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out2[1]}]

# G1
set_property PACKAGE_PIN D2 [get_ports {seg_out2[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out2[0]}]

# BIT1
set_property PACKAGE_PIN G2 [get_ports {ans_out1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ans_out1[0]}]

# BIT2
set_property PACKAGE_PIN C2 [get_ports {ans_out1[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ans_out1[1]}]

# BIT3
set_property PACKAGE_PIN C1 [get_ports {ans_out1[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ans_out1[2]}]

# BIT4
set_property PACKAGE_PIN H1 [get_ports {ans_out1[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ans_out1[3]}]

# BIT5
set_property PACKAGE_PIN G1 [get_ports {ans_out2[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ans_out2[0]}]

# BIT6
set_property PACKAGE_PIN F1 [get_ports {ans_out2[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ans_out2[1]}]

# BIT7
set_property PACKAGE_PIN E1 [get_ports {ans_out2[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ans_out2[2]}]

# BIT8
set_property PACKAGE_PIN G6 [get_ports {ans_out2[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ans_out2[3]}]

# DP0: off
set_property PACKAGE_PIN D5 [get_ports {dp_out[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dp_out[0]}]

# DP1: off
set_property PACKAGE_PIN H2 [get_ports {dp_out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dp_out[1]}]
