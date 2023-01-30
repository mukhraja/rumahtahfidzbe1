const { GuruController } = require("../controller");
const route = require("express").Router();
const { uploadMultipleFile } = require("../middleware/uploadFile");

route.get("/", GuruController.getGurus);
route.get("/:id", GuruController.getguruid);
route.get(
  "/bymastertahfidz/:mastertahfidzId",
  GuruController.getgurubymastertahfidz
);
route.get("/byrumahtahfidz/:pondokId", GuruController.getgurubyrumahtahfidz);
route.post("/", uploadMultipleFile, GuruController.createGuru);
route.put("/:id", GuruController.updateNoFileGuru);
route.put("/data/:id", uploadMultipleFile, GuruController.updateGuru);
route.delete("/:id", GuruController.deleteGuru);

module.exports = route;
