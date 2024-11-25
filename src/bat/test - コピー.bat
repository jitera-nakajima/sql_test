@echo off
setlocal enabledelayedexpansion

:: DB接続情報
set SERVER=localhost
set DATABASE=SampleDB
set USERNAME=sa
set PASSWORD=YourPassword

:: SQLファイル実行
echo Deploying database objects...
sqlcmd -S %SERVER% -d %DATABASE% -U %USERNAME% -P %PASSWORD% -i scripts\init.sql

if !ERRORLEVEL! == 0 (
    echo Deployment successful
) else (
    echo Deployment failed
    exit /b 1
)