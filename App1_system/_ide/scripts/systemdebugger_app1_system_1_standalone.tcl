# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\PoC\Hilbert_242\App1_system\_ide\scripts\systemdebugger_app1_system_1_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\PoC\Hilbert_242\App1_system\_ide\scripts\systemdebugger_app1_system_1_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351AF2506A" && level==0 && jtag_device_ctx=="jsn-Zybo Z7-210351AF2506A-13722093-0"}
fpga -file C:/PoC/Hilbert_242/App1/_ide/bitstream/Hilbert_242_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/PoC/Hilbert242C/PF100_25/export/PF100_25/hw/Hilbert_242_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/PoC/Hilbert_242/App1/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/PoC/Hilbert_242/App1/Debug/App1.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
