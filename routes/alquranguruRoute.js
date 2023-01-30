const { AlquranGuruController } = require("../controller");
const route = require("express").Router();

route.post("/", AlquranGuruController.createAlquran);
route.get("/listawal", AlquranGuruController.listAlquranAwal);
route.get(
  "/byrumahtahfidz/:pondokId",
  AlquranGuruController.listAlquranAwalRumahTahfidz
);
route.get(
  "/bymastertahfidz/:masterpondokId",
  AlquranGuruController.listAlquranAwalMasterTahfidz
);
route.get("/list/:id", AlquranGuruController.getAlqurans);
route.get("/:id", AlquranGuruController.getAlquran);
route.put("/:id", AlquranGuruController.updateAlquran);
route.delete("/:id", AlquranGuruController.deleteAlquran);

module.exports = route;
