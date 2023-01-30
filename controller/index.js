const UserController = require("./UserController");
const IqroController = require("./IqroController");
const SantriController = require("./SantriController");
const GuruController = require("./GuruController");
const PondokController = require("./PondokController");
const AlquranController = require("./AlquranController");
const SurahPendekController = require("./SurahPendekController");
const RoleController = require("./RoleController");
const DatabaseController = require("./DatabaseController");
const refreshToken = require("./refreshToken");
const IqroGuruController = require("./IqroGuruController");
const SurahPendekGuruController = require("./SurahPendekGuruController");
const AlquranGuruController = require("./AlquranGuruController");
const MasterPondokController = require("./MasterPondokController");
const UserSantriController = require("./UserSantriController");

module.exports = {
  UserController,
  IqroController,
  SantriController,
  GuruController,
  PondokController,
  AlquranController,
  SurahPendekController,
  RoleController,
  refreshToken,
  DatabaseController,
  IqroGuruController,
  SurahPendekGuruController,
  AlquranGuruController,
  MasterPondokController,
  UserSantriController,
};
