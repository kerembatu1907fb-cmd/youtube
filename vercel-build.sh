#!/bin/bash
set -e

echo "📦 Installing client dependencies..."
cd client
npm ci

echo "🏗️ Building client with Vite..."
npx vite build --force

echo "✅ Build completed!"
