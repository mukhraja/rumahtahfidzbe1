const { UserController, refreshToken } = require("../controller");
const route = require("express").Router();
const verifyToken = require("../middleware/verifyToken");
const { uploadMultipleFileUser } = require("../middleware/uploadFileUser");

route.get("/", UserController.getUsers);
route.get("/byadmin", UserController.getUserByAdmin);
route.get("/:id", UserController.getUser);
route.get("/byrumahtahfidz/:pondokId", UserController.getUserByRumahTahfidz);
route.get(
  "/bymastertahfidz/:mastertahfidzId",
  UserController.getUserByMasterTahfidz
);
route.put("/:id", UserController.updateNoFileUser);
route.post("/", uploadMultipleFileUser, UserController.createUser);
route.post(
  "/usersantri",
  uploadMultipleFileUser,
  UserController.createUserSantri
);
route.post("/data", UserController.createNoFileUser);
route.post("/data/usersantri", UserController.createNoFileUserSantri);
route.put("/data/:id", uploadMultipleFileUser, UserController.updateUser);
route.delete("/:id", UserController.deleteUser);
route.post("/login", UserController.login);
route.get("/token", refreshToken.getRefreshToken);

module.exports = route;
