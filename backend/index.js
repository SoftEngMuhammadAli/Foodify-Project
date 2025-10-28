import express from "express";
import dotenv from "dotenv";
import cors from "cors";
import { connectDB } from "./config/db.js";

dotenv.config();
const app = express();
const PORT = process.env.PORT || 3000;

// Middleware
app.use(cors());
app.use(express.json());

// MongoDB Connection
const databaseUrl = process.env.MONGODB_URL;
if (!databaseUrl) {
  console.error("❌ MONGODB_URL not found in .env");
  process.exit(1);
}
connectDB(databaseUrl);

// Routes
app.get("/", (req, res) => {
  res.send("Hello, World from Foodify API!");
});

app.get("/api/users", (req, res) => {
  return res.json([
    { id: 1, name: "Faisal Ijaz" },
    { id: 2, name: "John Doe" },
  ]);
});

// Start server
app.listen(PORT, () => {
  console.log(`🚀 Server running at http://localhost:${PORT}`);
});
