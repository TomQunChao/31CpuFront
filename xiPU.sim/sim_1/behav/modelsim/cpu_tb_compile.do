######################################################################
#
# File name : cpu_tb_compile.do
# Created on: Sun Apr 21 21:52:58 +0800 2019
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/dist_mem_gen_v8_0_12
vlib modelsim_lib/msim/xil_defaultlib

vmap dist_mem_gen_v8_0_12 modelsim_lib/msim/dist_mem_gen_v8_0_12
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -64 -incr -work dist_mem_gen_v8_0_12  \
"../../../../xiPU.ip_user_files/ipstatic/simulation/dist_mem_gen_v8_0.v" \

vlog -64 -incr -work xil_defaultlib  \
"../../../../xiPU.srcs/sources_1/ip/iram/sim/iram.v" \
"../../../../xiPU.srcs/sources_1/new/alu.v" \
"../../../../xiPU.srcs/sources_1/new/clkDivider.v" \
"../../../../xiPU.srcs/sources_1/new/control.v" \
"../../../../xiPU.srcs/sources_1/new/cpu.v" \
"../../../../xiPU.srcs/sources_1/new/decoder.v" \
"../../../../xiPU.srcs/sources_1/new/extend.v" \
"../../../../xiPU.srcs/sources_1/new/mux2.v" \
"../../../../xiPU.srcs/sources_1/new/mux4.v" \
"../../../../xiPU.srcs/sources_1/new/mux5bit.v" \
"../../../../xiPU.srcs/sources_1/new/npc.v" \
"../../../../xiPU.srcs/sources_1/new/pc.v" \
"../../../../xiPU.srcs/sources_1/new/pcPlusData.v" \
"../../../../xiPU.srcs/sources_1/new/pclkDiv.v" \
"../../../../xiPU.srcs/sources_1/new/ram.v" \
"../../../../xiPU.srcs/sources_1/new/regfile.v" \
"../../../../xiPU.srcs/sources_1/new/sccomp_dataflow.v" \
"../../../../xiPU.srcs/sim_1/new/cpu_tb.v" \

# compile glbl module
vlog -work xil_defaultlib "glbl.v"

quit -force

