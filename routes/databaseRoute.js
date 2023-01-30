const { DatabaseController } = require("../controller");

const route = require("express").Router();

route.get("/", DatabaseController.exportDatabase);
// route.post(
//   "/import",
//   multer().single("database"),
//   DatabaseController.importDatabase
// );

module.exports = route;
