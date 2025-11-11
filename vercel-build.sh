#!/bin/bash
echo "🚀 Starting Vercel build..."

# client dizinine gir
cd client

echo "📦 Installing dependencies..."
npm install

echo "🔐 Fixing executable permissions..."
chmod -R +x ./node_modules/.bin || true

echo "⚙️ Building client with Vite..."
bash build.sh

# root’a geri dön

cd ..
bash ./link-build-deploy.sh