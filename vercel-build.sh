#!/bin/bash
chmod +x ./client/node_modules/.bin/* || true
cd client
npm install
npm run build
cd ..
