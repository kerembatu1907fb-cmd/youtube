import React, {useEffect, useState} from "react";

export default function App(){
  const [msg, setMsg] = useState("Loading...");

  useEffect(()=>{
    fetch("/api").then(r=>r.json()).then(d=>setMsg(d.message)).catch(()=>setMsg("API unreachable"));
  },[]);

  return (
    <div style={{fontFamily:'sans-serif', padding:20}}>
      <h1>Express + Vite + Vercel Starter</h1>
      <p>API says: <strong>{msg}</strong></p>
      <p>You're ready to deploy to Vercel.</p>
    </div>
  );
}
