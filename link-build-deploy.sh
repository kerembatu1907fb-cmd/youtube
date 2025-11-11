#!/bin/bash

# --- 1. youtube-ai-bolt-components Build ---
echo "🚀 Step 1: Building youtube-ai-bolt-components..."
cd node_modules/youtube-ai-bolt-components || exit
npm install
npm run build

echo "✅ Build complete. Committing changes..."
git add .
git commit -m "Build updated for youtube-ai-bolt-components"
git push origin main

# --- 2. Return to main project ---
echo "↩️ Returning to main project..."
cd ../../

echo "🔗 Step 2: Updating submodule link..."
git add .
git commit -m "Update submodule reference for youtube-ai-bolt-components"
git push origin main

# --- 3. Client Build (Vite) ---
echo "⚡ Step 3: Building client (Vite)..."
cd client || exit
npm install
npm run build

# --- 4. Optional local test ---
echo "✅ Step 4: Running local preview..."
npm run preview

# --- 5. Optional Vercel Deploy ---
cd ..
if [ -f "./vercel-build.sh" ]; then
  echo "🚀 Step 5: Running Vercel build script..."
  bash ./vercel-build.sh
else
  echo "⚠️ vercel-build.sh not found, skipping deploy step."
fi

echo "🎉 All steps completed successfully!"
