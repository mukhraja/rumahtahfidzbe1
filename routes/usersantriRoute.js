const { UserSantriController } = require("../controller");
const route = require("express").Router();

route.post("/create", UserSantriController.createUserSantri);

module.exports = route;
