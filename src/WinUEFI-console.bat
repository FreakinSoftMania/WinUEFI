@echo off
if %VERSION%=="" (
    echo WinUEFI by FreakinSoftMania 
) else (
    echo WinUEFI %VERSION% by FreakinSoftMania
)
timeout /t 3 > nul
echo Rebooting in 3...
timeout /nobreak /t 1 > nul
echo Rebooting in 2...
timeout /nobreak /t 1 > nul
echo Rebooting in 1...
timeout /nobreak /t 1 > nul
echo Rebooting...
timeout /nobreak /t 2 > nul
shutdown /fw /f /r /t 00
