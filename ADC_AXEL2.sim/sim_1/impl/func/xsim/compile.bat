@echo off
REM ****************************************************************************
REM Vivado (TM) v2024.1.2 (64-bit)
REM
REM Filename    : compile.bat
REM Simulator   : AMD Vivado Simulator
REM Description : Script for compiling the simulation design source files
REM
REM Generated by Vivado on Wed Oct 30 14:49:31 +0100 2024
REM SW Build 5164865 on Thu Sep  5 14:37:11 MDT 2024
REM
REM Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
REM Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
REM
REM usage: compile.bat
REM
REM ****************************************************************************
REM compile VHDL design sources
echo "xvhdl --incr --relax -prj ADC1_wrapper_vhdl.prj"
call xvhdl  --incr --relax -prj ADC1_wrapper_vhdl.prj -log xvhdl.log
call type xvhdl.log > compile.log
if "%errorlevel%"=="1" goto END
if "%errorlevel%"=="0" goto SUCCESS
:END
exit 1
:SUCCESS
exit 0
