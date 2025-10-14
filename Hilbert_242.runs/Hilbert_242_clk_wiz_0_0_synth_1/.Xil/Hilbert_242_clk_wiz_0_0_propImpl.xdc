set_property SRC_FILE_INFO {cfile:c:/PoC/Hilbert242C/Hilbert_242.gen/sources_1/bd/Hilbert_242/ip/Hilbert_242_clk_wiz_0_0/Hilbert_242_clk_wiz_0_0.xdc rfile:../../../Hilbert_242.gen/sources_1/bd/Hilbert_242/ip/Hilbert_242_clk_wiz_0_0/Hilbert_242_clk_wiz_0_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.080
