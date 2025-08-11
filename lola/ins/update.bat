@echo off
del lola.aos

rem -- "forcedos" is only required under Windows NT because the tar.exe I'm
rem -- using is an OS/2 executable.
forcedos c:\p\binb\tar -c -f lola.aos *.ins *.geo *.000 *.csv *.nol

