@echo off
echo 🦕 Setting up Dino Runner Game Tutorial...

REM Check if git is available
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Git is required but not installed. Please install Git first.
    pause
    exit /b 1
)

REM Check if deno is available  
deno --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Deno is required but not installed.
    echo 📥 Please visit https://deno.com/ to install Deno first.
    pause
    exit /b 1
)

echo ✅ Git and Deno are available

REM Initialize and update submodules if not already done
echo 📦 Initializing submodules...
git submodule update --init --recursive

if %errorlevel% neq 0 (
    echo ❌ Failed to initialize submodules
    pause
    exit /b 1
)

echo ✅ Submodules initialized successfully

REM Copy environment file if it doesn't exist
if not exist ".env" (
    if exist ".env.example" (
        copy ".env.example" ".env" >nul
        echo ✅ Environment file created from .env.example
    ) else (
        echo ⚠️  No .env.example found, you may need to create a .env file manually
    )
) else (
    echo ✅ Environment file already exists
)

echo.
echo 🎉 Setup complete! You can now run:
echo    deno task dev:stage1    # Start with Stage 1
echo    deno task dev:stage2    # Or jump to Stage 2
echo    deno task dev:stage3    # Or jump to Stage 3
echo    deno task dev:stage4    # Or jump to Stage 4
echo.
echo 📖 Visit http://localhost:8000 once you start a stage
echo 📚 Check the README.md for detailed instructions
pause
