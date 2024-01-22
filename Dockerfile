# Runs the container from Windows Server
FROM mcr.microsoft.com/windows/servercore:ltsc2022
# Sets the maintainer to me, Minionguyjpro!
MAINTAINER Minionguyjpro
# Copies the WinUEFI batch file to the container
COPY ./src .
# Runs the WinUEFI batch file
CMD ["WinUEFI.bat"]
