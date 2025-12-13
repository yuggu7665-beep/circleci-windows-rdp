@echo off
echo ========================================
echo   STARTING FREE WINDOWS RDP SESSION
echo ========================================
echo.

cd /d "%~dp0"

echo [1/2] Triggering CircleCI pipeline...
git commit --allow-empty -m "Start RDP session - %date% %time%"
git push

echo.
echo [2/2] Pipeline triggered successfully!
echo.
echo ========================================
echo   WAIT 5-10 MINUTES
echo ========================================
echo.
echo Your RDP server is starting up...
echo.
echo Check status:
echo   https://app.circleci.com/pipelines/project/2bfa217f-f98d-4387-a94a-1c1adf7b72ba
echo.
echo Get credentials in 5-10 minutes from the pipeline logs
echo.
pause
