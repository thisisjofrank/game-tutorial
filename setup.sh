#!/bin/bash

# Game Tutorial Setup Script
echo "🦕 Setting up Dino Runner Game Tutorial..."

# Check if git is available
if ! command -v git &> /dev/null; then
    echo "❌ Git is required but not installed. Please install Git first."
    exit 1
fi

# Check if deno is available
if ! command -v deno &> /dev/null; then
    echo "❌ Deno is required but not installed."
    echo "📥 Please visit https://deno.com/ to install Deno first."
    exit 1
fi

echo "✅ Git and Deno are available"

# Initialize and update submodules if not already done
echo "📦 Initializing submodules..."
git submodule update --init --recursive

if [ $? -eq 0 ]; then
    echo "✅ Submodules initialized successfully"
else
    echo "❌ Failed to initialize submodules"
    exit 1
fi

# Copy environment file if it doesn't exist
if [ ! -f ".env" ]; then
    if [ -f ".env.example" ]; then
        cp .env.example .env
        echo "✅ Environment file created from .env.example"
    else
        echo "⚠️  No .env.example found, you may need to create a .env file manually"
    fi
else
    echo "✅ Environment file already exists"
fi

echo ""
echo "🎉 Setup complete! You can now run:"
echo "   deno task dev:stage1    # Start with Stage 1"
echo "   deno task dev:stage2    # Or jump to Stage 2"
echo "   deno task dev:stage3    # Or jump to Stage 3"  
echo "   deno task dev:stage4    # Or jump to Stage 4"
echo ""
echo "📖 Visit http://localhost:8000 once you start a stage"
echo "📚 Check the README.md for detailed instructions"
