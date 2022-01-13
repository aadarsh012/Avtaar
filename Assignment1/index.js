const express = require("express");

const uid = require("./controllers/uidGenerate");

const app = express();

app.use(express.json());

app.get("/api/:username", uid);

app.listen(5000, () => console.log("Running on 5000"));
