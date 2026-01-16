@echo off
echo.
echo ========================================
echo   Quartz Installation Script
echo   Content Directory: Public/
echo ========================================
echo.

cd /d "D:\AAA LC\LeeDaud"

echo [1/4] Cloning Quartz...
git clone --depth 1 --branch v4 https://github.com/jackyzha0/quartz.git quartz-temp
if errorlevel 1 (
    echo Error: Clone failed
    pause
    exit /b 1
)

echo [2/4] Copying files...
xcopy /E /Y /I quartz-temp\quartz quartz\
copy /Y quartz-temp\package.json .
copy /Y quartz-temp\tsconfig.json .

echo [3/4] Cleaning up...
rmdir /S /Q quartz-temp

echo [4/4] Installing dependencies...
call npm install
if errorlevel 1 (
    echo Error: npm install failed
    pause
    exit /b 1
)

echo.
echo ========================================
echo   Installation Complete!
echo ========================================
echo.
echo Preview: npx quartz build --directory Public --serve
echo URL: http://localhost:8080
echo.
pause
