const express = require("express");
const dotenv = require("dotenv");
const cookieParser = require("cookie-parser");
const cors = require("cors");

dotenv.config();

const routes = require("./routes");

const app = express();

// const PORT = process.env.PORT || 2000;

const PORT = 3000;

app.use(cors({ origin: "*" }));
app.use(cookieParser());
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.use(routes);

app.listen(PORT, () => console.log(`http://listening:${PORT}/v1/api`));
// app.listen(PORT, () => console.log(`http://localhost:${PORT}/v1/api`));
