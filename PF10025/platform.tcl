# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\PoC\Hilbert_242\PF10025\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\PoC\Hilbert_242\PF10025\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {PF10025}\
-hw {C:\PoC\Hilbert_242\Hilbert_242_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {C:/PoC/Hilbert_242}

platform write
platform generate -domains 
platform active {PF10025}
platform generate
platform generate -domains standalone_domain,zynq_fsbl 
platform clean
platform generate
