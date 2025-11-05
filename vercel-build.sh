#!/bin/bash
# Vercel özel build scripti

echo ">>> Fixing vite permission issue..."

# İzinleri düzelt
chmod +x ./client/node_modules/.bin/* || true

# Client build
cd client
echo ">>> Building Vite client..."
npm install
npm run build

# API varsa geri dön
cd ..

echo ">>> Build tamamlandı ✅"
