#!/usr/bin/env bash
set -e

echo "🚀 Starting Vercel build..."

cd client

echo "📦 Installing client dependencies..."
npm install

echo "🔐 Fixing executables in node_modules/.bin (recursive)..."
# recursive chmod tüm .bin içindeki dosyaları çalıştırılabilir yapar; hata verse de build devam etsin
find ./node_modules/.bin -type f -exec chmod +x {} \; || true

echo "⚙️ Running vite build via npx..."
# doğrudan npx ile çalıştır (npm run build çağırmıyoruz)
npx --yes vite build

cd ..

echo "✅ Build completed successfully!"
