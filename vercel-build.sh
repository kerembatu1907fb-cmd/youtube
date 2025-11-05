#!/bin/bash
set -e

echo "🚀 Starting Vercel build script..."

# Client klasörüne geç
cd client

# Node modüllerini yükle
npm install

# Vite build işlemini başlat
npx vite build

echo "✅ Build completed successfully!"
