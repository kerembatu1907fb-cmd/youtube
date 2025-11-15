import React, { useEffect, useState } from "react";
import { CustomButton } from "youtube-ai-bolt-components";

export default function App() {
  const [msg, setMsg] = useState("Loading...");

  useEffect(() => {
    fetch("/api")
      .then((r) => r.json())
      .then((d) => setMsg(d.message))
      .catch(() => setMsg("API unreachable"));
  }, []);

  return (
    <div style={{ 
      fontFamily: "Inter, sans-serif", 
      padding: "2rem", 
      textAlign: "center" 
    }}>
      <h1 style={{ color: "#4f46e5" }}>🚀 Express + Vite + Vercel + Bolt</h1>
      <p>
        API says: <strong>{msg}</strong>
      </p>
      <p>Everything is linked and ready for deployment!</p>

      <div style={{ marginTop: "2rem" }}>
        <CustomButton 
          label="Click me from Bolt 🔥" 
          onClick={() => alert("Bolt Component works perfectly!")}
        />
      </div>
    </div>
  );
}
