#!/usr/bin/env bash
set -e

echo "🚀 Starting Vercel build script..."

# Client klasörüne geç
cd client

# Bağımlılıkları yükle
echo "📦 Installing client dependencies..."
npm install

# Vite izinlerini düzelt (otomatik chmod)
echo "🔧 Fixing vite permissions..."
chmod -R +x ./node_modules/.bin || true
find ./node_modules/.bin -type f -exec chmod +x {} \; || true

# Build işlemini başlat
echo "🏗️  Running npm build..."
npm run build

# Üst klasöre geri dön
cd ..

echo "✅ Build completed successfully!"
