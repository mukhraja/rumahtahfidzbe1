const { SantriController } = require("../controller");
const route = require("express").Router();
const { uploadMultipleFile } = require("../middleware/uploadFile");

route.get("/", SantriController.getSantris);
route.get("/:id", SantriController.getSantri);
route.get("/byrumahtahfidz/:pondokId", SantriController.getSantriByRumahTahfiz);
route.get(
  "/byrumahtahfidz/dropdown/:pondokId",
  SantriController.getSantriByRumahTahfizDropdown
);
route.get(
  "/bymastertahfidz/:mastertahfidzId",
  SantriController.getSantriByMasterTahfiz
);
route.get("/byusersantri/:userId", SantriController.getSantriByUserSantri);
route.get("/byuser/:userId", SantriController.getUserByUser);
route.post("/", uploadMultipleFile, SantriController.createSantri);
route.put("/:id", SantriController.updateSantriNoFile);
route.delete("/:id", SantriController.deleteSantri);
route.put("/usersantri/:id", SantriController.updateSantriUser);
route.put("/data/:id", uploadMultipleFile, SantriController.updateSantri);

module.exports = route;
