import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";
import path from "path";

export default defineConfig({
  plugins: [react()],
  resolve: {
    alias: {
      "youtube-ai-bolt-components": path.resolve(
        __dirname,
        "./node_modules/youtube-ai-bolt-components"
      ),
    },
  },
  optimizeDeps: {
    include: ["youtube-ai-bolt-components"],
  },
});
