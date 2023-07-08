# Runs the container from Windows Server
FROM mcr.microsoft.com/windows/servercore:ltsc
# Sets the maintainer to me, Minionguyjpro!
MAINTAINER Minionguyjpro
# Copies the WinUEFI batch file to the container
COPY ./src/WinUEFI.bat WinUEFI.bat
# Runs the WinUEFI batch file
CMD C:\WinUEFI.bat && cmd