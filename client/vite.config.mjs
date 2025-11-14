import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";
import path from "path";

export default defineConfig({
  root: path.resolve(__dirname, "./client"), // ✅ ana dizin client
  plugins: [react()],
  build: {
    outDir: path.resolve(__dirname, "./client/dist"), // ✅ build çıktısı
    emptyOutDir: true,
  },
  optimizeDeps: {
    include: ["youtube-ai-bolt-components"],
  },
});
