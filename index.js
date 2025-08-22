// file: app.js
const express = require("express");
const app = express();
const port = 3000;

// Middleware untuk parsing JSON
app.use(express.json());

// Route utama
app.get("/", (req, res) => {
  res.send("Hello World dari Express! sssssssss www ");
});

// Contoh route dengan parameter
app.get("/hello/:name", (req, res) => {
  res.send(`Halo, ${req.params.name}!`);
});

// Contoh route POST
app.post("/data", (req, res) => {
  const body = req.body;
  res.json({
    message: "Data diterima",
    data: body,
  });
});

// Jalankan server
app.listen(port, () => {
  console.log(`Server berjalan di http://localhost:${port}`);
});
