@echo off
:mn
cls
echo HmoePioneer Script by Izumi Chinochan
echo Please input your choice
echo.&echo 1.Prepare neccessary files
echo.&echo 2.Start HmoePioneer normally
echo.&echo 3.Install HmoePioneer as your system service
echo.&echo 4.Uninstall the system service of HmoePioneer
echo.&echo 5.Start the system service of HmoePioneer
echo.&echo 6.Stop the system service of HmoePioneer
echo.&echo 7.Full install HmoePioneer automatically
echo.&echo 8.Exit
echo.
set /p us_ipt=Please input your choice and press Enter:
if %us_ipt% equ 1 goto Pre
if %us_ipt% equ 2 goto NormalStart
if %us_ipt% equ 3 goto InstallServ
if %us_ipt% equ 4 goto UninstallServ
if %us_ipt% equ 5 goto StrSrv
if %us_ipt% equ 6 goto StpSrv
if &us_ipt% equ 7 goto Autoins
if %us_ipt% equ 8 exit

echo.
echo Wrong choice,please retry
pause
goto mn

:Pre
copy %SystemRoot%\System32\WinDivert64.sys .\
copy %SystemRoot%\System32\WinDivert.dll .\
echo Please check whether your folder has WinDivert64.sys and WinDivert.dll.If not,please call at the Developer
pause
echo If the installation is normally,please input 1 to go back to the menu,else,please input 2 to retry
set /p preipt=Please input your choice and press Enter:
if %preipt% equ 1 goto mn
if %preipt% equ 2 goto Pre
echo.
echo Wrong choice,please retry
pause
goto mn

:NormalStart
hmoepioneer.exe
pause
exit

:InstallServ
hmoepioneer.exe -install
hmoepioneer.exe -start
echo Done.Script will automatically return to the main menu
pause
goto mn

:UninstallServ
hmoepioneer.exe -stop
hmoepioneer.exe -remove
echo Done.Script will automatically return to the main menu
pause
goto mn

:StrSrv
hmoepioneer.exe -start
echo Done.Script will automatically return to the main menu
pause
goto mn

:StpSrv
hmoepioneer.exe -stop
echo Done.Script will automatically return to the main menu
pause
goto mn

:Autoins
copy %SystemRoot%\System32\WinDivert64.sys .\
copy %SystemRoot%\System32\WinDivert.dll .\
hmoepioneer.exe -install
hmoepioneer.exe -start
