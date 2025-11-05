#!/usr/bin/env bash
set -e

echo "🚀 Starting Vercel build script..."

# Client klasörüne geç
cd client

# Bağımlılıkları yükle
echo "📦 Installing client dependencies..."
npm install

# Vite izinlerini düzelt
echo "🔧 Fixing vite permissions..."
chmod -R +x ./node_modules/.bin || true

# Build işlemini başlat
echo "🏗️ Running npm build..."
npm run build

# Üst klasöre geri dön
cd ..

echo "✅ Build completed successfully!"
