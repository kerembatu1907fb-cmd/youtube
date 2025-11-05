#!/bin/bash
echo "🚀 Building client with Vite..."

# node_modules/.bin altındaki tüm dosyaları çalıştırılabilir yap
chmod +x ./node_modules/.bin/* || true

# Vite build çalıştır
npx vite build
