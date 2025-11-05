#!/bin/bash
# Vercel özel build scripti

set -e  # hata olursa scripti durdurur

echo ">>> Fixing vite permission issue..."

# İzinleri düzelt
chmod -R 755 ./client/node_modules/.bin || true

# Client build
cd client
echo ">>> Building Vite client..."
npx vite build --force

cd ..
echo ">>> Build tamamlandı ✅"
