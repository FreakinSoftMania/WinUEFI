set VERSION=${{ github.REF_NAME }}
echo WinUEFI %VERSION% by FreakinSoftMania
timeout /t 5 > nul
shutdown /fw /f /r /t 00
