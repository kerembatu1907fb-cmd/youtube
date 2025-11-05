#!/bin/bash
set -e

echo "🚀 Starting Vercel build script..."

# Client klasörüne geç
cd client

# Bağımlılıkları yükle
echo "📦 Installing client dependencies..."
npm install

# Build komutuna izin ver
chmod +x ./node_modules/.bin/vite || true

# Build işlemini başlat
echo "🏗️ Running npm build..."
npm run build

# Üst klasöre geri dön
cd ..

echo "✅ Build completed successfully!"
