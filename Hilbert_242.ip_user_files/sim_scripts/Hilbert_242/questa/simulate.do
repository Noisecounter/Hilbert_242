onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib Hilbert_242_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {Hilbert_242.udo}

run 1000ns

quit -force
