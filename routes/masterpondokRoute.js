const { MasterPondokController } = require("../controller");
const route = require("express").Router();
const { uploadMultipleFile } = require("../middleware/uploadFile");

route.get("/", MasterPondokController.getPondoks);
route.post("/", uploadMultipleFile, MasterPondokController.createPondok);
route.get("/byrumahtahfidz/:id", MasterPondokController.getPondokRumahTahfidz);
route.put("/:id", uploadMultipleFile, MasterPondokController.updatePondok);
route.get("/:id", MasterPondokController.getPondok);
route.delete("/:id", MasterPondokController.deletePondok);
route.put("/data/:id", MasterPondokController.updatePondokNoFile);

module.exports = route;
