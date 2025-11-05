#!/bin/bash
set -e

# Client klasörüne gir
cd client

# Node modüllerini yükle
npm install

# Vite'e doğrudan izin hatası oluşmaması için bash üzerinden çalıştır
npx vite build
