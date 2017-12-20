@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 934ce40a663746aa82833165225fafba -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L blk_mem_gen_v8_3_6 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot audio_tb_behav xil_defaultlib.audio_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
