#!/usr/bin/env bash
set -e

echo "🚀 Starting Vercel build..."

cd client
npm install
npm run build
cd ..

echo "✅ Build completed successfully!"
