const { PondokController } = require("../controller");
const route = require("express").Router();
const { uploadMultipleFile } = require("../middleware/uploadFile");

route.get("/", PondokController.getPondoks);
route.post("/", uploadMultipleFile, PondokController.createPondok);
route.get("/byrumahtahfidz/:id", PondokController.getPondokRumahTahfidz);
route.put("/data/:id", PondokController.updatePondokNoFile);
route.get("/byrumahtahfidzid/:id", PondokController.getPondokRumahTahfidzbyid);
route.put("/:id", uploadMultipleFile, PondokController.updatePondok);
route.get("/:id", PondokController.getPondok);
route.delete("/:id", PondokController.deletePondok);

module.exports = route;
