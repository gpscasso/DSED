@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 88a7884dd2524aa6a84611d4b4255012 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot lab2_4_2_behav xil_defaultlib.lab2_4_2 -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
