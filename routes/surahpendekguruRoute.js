const { SurahPendekGuruController } = require("../controller");
const route = require("express").Router();

route.post("/", SurahPendekGuruController.createSurahPendek);
route.get("/listawal", SurahPendekGuruController.listSurahPendekAwal);
route.get("/list/:id", SurahPendekGuruController.getSurahPendeks);
route.get("/:id", SurahPendekGuruController.getSurahPendek);
route.get(
  "/byrumahtahfidz/:pondokId",
  SurahPendekGuruController.listSurahPendekAwalRumahTahfidz
);
route.get(
  "/bymastertahfidz/:masterpondokId",
  SurahPendekGuruController.listSurahPendekAwalByMasterTahfidz
);
route.put("/:id", SurahPendekGuruController.updateSurahpendek);
route.delete("/:id", SurahPendekGuruController.deleteSurahpendek);

module.exports = route;
