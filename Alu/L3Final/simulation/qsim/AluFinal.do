onerror {quit -f}
vlib work
vlog -work work AluFinal.vo
vlog -work work AluFinal.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.AluFinal_vlg_vec_tst
vcd file -direction AluFinal.msim.vcd
vcd add -internal AluFinal_vlg_vec_tst/*
vcd add -internal AluFinal_vlg_vec_tst/i1/*
add wave /*
run -all
