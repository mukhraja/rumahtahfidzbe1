const { RoleController } = require("../controller");
const route = require("express").Router();

route.get("/", RoleController.getRoles);
route.post("/", RoleController.createRole);
route.put("/:id", RoleController.updateRole);
route.delete("/:id", RoleController.deleteRole);

module.exports = route;
