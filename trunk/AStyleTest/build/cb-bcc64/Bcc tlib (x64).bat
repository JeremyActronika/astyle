@echo off

REM THIS FILE IS NO LONGER USED
REM The compiler setting for "Link object files to static library" has been changed.
REM Quotes have been added to the option +-"$link_objects".

REM This file runs TLIB with quotes around the object file path.
REM The dash (-) in the pathname apparently is mistaken for a minus sign.
REM File paths without a dash work ok with TLIB.

set binpath=C:\Programs\Embarcadero\EC6.80\bin

if exist bin\gtest.lib del  bin\gtest.lib

echo Linking gtest.lib

%binpath%\tlib64.exe /C /P64 bin\gtest.lib + "obj\Release\gmock\gtest\src\gtest-all.obj"

REM echo -
REM pause
