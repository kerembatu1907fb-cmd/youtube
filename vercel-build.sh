#!/bin/bash
# Vercel özel build scripti (izin hatası çözümüyle)

echo ">>> Installing dependencies..."
cd client
npm install

echo ">>> Building Vite client (using npx)..."
# Local bin erişimi yerine global npx kullanıyoruz
npx vite build

cd ..
echo ">>> Build tamamlandı ✅"
