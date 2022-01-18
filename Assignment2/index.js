require("dotenv").config({ path: "./config.env" });

const { addUser, addEvent } = require("./controllers/add");

const path = require("path");

const express = require("express");

const connectDB = require("./config/db");

connectDB();

const app = express();

app.use(express.json());

app.post("/api/adduser", addUser);
app.post("/api/addevent", addEvent);

const PORT = process.env.PORT || 5000;

app.listen(PORT, () => console.log("Server Running"));
