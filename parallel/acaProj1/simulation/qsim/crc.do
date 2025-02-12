onerror {exit -code 1}
vlib work
vcom -work work crc.vho
vcom -work work Waveform1.vwf.vht
vsim  -c -t 1ps -L cycloneiv -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.checker_24_1_vhd_vec_tst
vcd file -direction crc.msim.vcd
vcd add -internal checker_24_1_vhd_vec_tst/*
vcd add -internal checker_24_1_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
