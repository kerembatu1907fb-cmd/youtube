#!/bin/bash

echo "🚀 Starting Vercel build..."

# CLIENT →
cd client

echo "📦 Installing client dependencies..."
npm install

echo "🔧 Fixing executable permissions..."
chmod -R +x ./node_modules/.bin || true

echo "🏗️ Building client with Vite..."
npm run build

# root’a geri dön
cd ..

echo "⚡ Skipping rebuild for youtube-ai-bolt-components (already prebuilt)"
rm -rf node_modules/youtube-ai-bolt-components/node_modules || true

echo "✅ Build script completed."
