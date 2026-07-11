@echo off
REM Console application runner script for Windows
REM This script provides commands to build and run the App Insights Auto Instrument Web

setlocal enabledelayedexpansion

if "%1"=="run" (
    dotnet run --project AppInsightsAutoInstrumentWeb.csproj
    goto end
)

if "%1"=="build" (
    dotnet build AppInsightsAutoInstrumentWeb.csproj
    goto end
)

if "%1"=="publish" (
    dotnet publish AppInsightsAutoInstrumentWeb.csproj -c Release -o ./publish
    goto end
)

if "%1"=="compress" (
    cd publish
    powershell Compress-Archive -Path * -DestinationPath ..\app.zip -Force
    cd ..
    goto end
)

if "%1"=="" (
    echo Usage: run.bat [command]
    echo.
    echo Commands:
    echo   run       - Build and run the console application
    echo   build     - Build the console application only
    echo   publish   - Publish the console application
    echo   compress  - Compress the published output into a zip file
    goto end
)

echo Unknown command: %1
echo Use 'run.bat' with no arguments to see available commands.

:end
endlocal
