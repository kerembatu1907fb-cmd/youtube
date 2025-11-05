#!/bin/bash
# Vercel build script (izin hatası bypass)

echo ">>> Installing client dependencies..."
cd client
npm ci || npm install

echo ">>> Building client using npx..."
npx --yes vite build || npx vite build

cd ..
echo ">>> ✅ Build tamamlandı!"
