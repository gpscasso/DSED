@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 75cf65c0396148a290ac8a162b7fac51 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot lab3_2_1_tb_behav xil_defaultlib.lab3_2_1_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
