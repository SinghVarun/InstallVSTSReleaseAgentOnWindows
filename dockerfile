# escape=`
FROM mcr.microsoft.com/dotnet/framework/runtime:4.7.2-windowsservercore-ltsc2016
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

RUN New-Item -Path .\BuildAgent -Type Directory

WORKDIR C:/BuildAgent

COPY ./Start.ps1 ./

CMD ./Start.ps1
