import express from "express";
import path from "path";
import { fileURLToPath } from "url";

const app = express();

// __dirname for ESM
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Serve static files from client/dist
app.use(express.static(path.join(__dirname, "../client/dist")));

app.get("/api", (req, res) => {
  res.json({ message: "Hello from Express API!" });
});

// SPA fallback
app.get("*", (req, res) => {
  res.sendFile(path.join(__dirname, "../client/dist/index.html"));
});

export default app;
