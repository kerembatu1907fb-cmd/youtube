#!/bin/bash
# Vercel özel build scripti

echo ">>> Fixing vite permission issue..."

# İzinleri düzelt
chmod +x ./client/node_modules/.bin/vite || true

# Client build
cd client
echo ">>> Building Vite client..."
npm run build

# Eğer API varsa test etmeden önce geri dön
cd ..

echo ">>> Build tamamlandı ✅"
