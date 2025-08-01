@echo off
cls

@REM -------------------------------------------
@REM CREATE SCENARIOS
@REM -------------------------------------------

if exist *.miz del *.miz
c:\php\php Make.php release Caucasus

copy .\_DebugOutput\Script-Caucasus.lua .\TheUniversalMission.lua

echo.
