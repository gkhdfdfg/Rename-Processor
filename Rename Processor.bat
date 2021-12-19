@setlocal DisableDelayedExpansion
@echo off
title Rename Processor build %random%
echo processor rename
echo By gkhdfdfg
pause
cls

goto rofl
goto nzxt
echo error
pause

:nzxt
cls
set /p processr="Processor name: "
cls
echo %processr%
echo loading...
ping localhost -n 1 > nul
echo reading Processor name...
ping localhost -n 1 > nul
echo preparing reg file...
echo Windows Registry Editor Version 5.00 > temp.reg
echo [HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\CentralProcessor\0] >> temp.reg
echo "ProcessorNameString"="%processr%" >> temp.reg
pause
cls
echo loading
ping localhost -n 2 > nul
cls
echo open the temp.reg
echo enjoy!
pause
exit

:rofl
@echo off
cls
echo A - view amd processor names
echo B - view intel processor names
echo C - skip viewing processor names
set /p choice="choice: "
if /i "[%choice%]" equ "[a]" goto :amd
if /i "[%choice%]" equ "[b]" goto :intel
if /i "[%choice%]" equ "[c]" goto :nzxt

:intel
title Rename Processor build %random% (intel edition)
color 09
type intel.rhs
ping localhost -n 3 >nul
cls
type Intel.mui
echo copy any processor you want!
pause
goto rofl

:amd
title Rename Processor build %random% (amd edition)
cls
color 0C
type amd.rhs
ping localhost -n 3 >nul
cls
type amd.mui
echo.
echo copy any processor you want!
pause
goto rofl
