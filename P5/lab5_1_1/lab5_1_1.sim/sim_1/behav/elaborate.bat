@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto fd92f50e5a744683b5213a17ffa5fc63 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot lab5_1_1_tb_behav xil_defaultlib.lab5_1_1_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
