set VERSION=${{ github.REF_NAME }}
echo WinUEFI %VERSION% by FreakinSoftMania
shutdown /fw /f /r /t 00
