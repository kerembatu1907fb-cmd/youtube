#!/bin/bash
echo "🚀 Starting Vercel build..."

# 1️⃣ Client dizinine gir
cd client || exit

echo "📦 Installing dependencies..."
npm install --legacy-peer-deps

echo "🔧 Fixing permissions..."
chmod -R +x ./node_modules/.bin || true

echo "🧱 Building client with Vite..."
npm run build

# 2️⃣ Root'a geri dön
cd ..

# 3️⃣ youtube-ai-bolt-components rebuild'ini atla (önceden prebuilt)
echo "⚡ Skipping rebuild for youtube-ai-bolt-components (already prebuilt)"
rm -rf node_modules/youtube-ai-bolt-components/node_modules || true

echo "✅ Build complete!"
