#!/bin/bash
set -e

echo "🚀 Starting Vercel build script..."

# Client klasörüne geç
cd client

# Node modüllerini yükle
echo "📦 Installing client dependencies..."
npm install

# Vite build işlemini başlat
echo "🏗️ Running Vite build..."
npx vite build

# Üst klasöre geri dön
cd ..

echo "✅ Build completed successfully!"
