@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xsim lab1_6_1_partA_tb_behav -key {Behavioral:sim_1:Functional:lab1_6_1_partA_tb} -tclbatch lab1_6_1_partA_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
