vcom -work work checker_serial.vwf.vht
vsim -novopt -c -t 1ps -L cycloneiv -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.checker_serial_vhd_vec_tst -voptargs="+acc"
add wave /*
run -all
