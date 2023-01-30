const { IqroController } = require("../controller");
const route = require("express").Router();

route.post("/", IqroController.createIqros);
route.get("/listawal", IqroController.listIqroAwal);
route.get("/byrumahtahfidz/:pondokId", IqroController.listIqroAwalRumahTahfidz);
route.get(
  "/bymastertahfidz/:masterpondokId",
  IqroController.listIqroAwalByMasterTahfidz
);
route.get("/byuser/:userId", IqroController.listIqroAwalRumahTahfidzByUserId);
route.get("/list/:id", IqroController.getIqros);
route.get("/:id", IqroController.getIqro);
route.put("/:id", IqroController.updateIqros);
route.delete("/:id", IqroController.deleteIqros);

module.exports = route;
