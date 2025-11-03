import express from "express";
import cors from "cors";

const app = express();

// Middleware
app.use(cors());
app.use(express.json());

// Basit test endpoint
app.get("/api", (req, res) => {
  res.json({ message: "Hello from Express API! 🚀" });
});

// Diğer endpoint'leri buraya ekleyebilirsin
// app.post("/api/data", (req, res) => { ... });

export default app;
