const route = require("express").Router();
const uploadFile = require("../middleware/uploadFile");
const uploadFileUser = require("../middleware/uploadFileUser");

route.get("/:filename", uploadFile.showProductImage);
route.get("/userdata/:filename", uploadFileUser.showProductImageUser);

module.exports = route;
