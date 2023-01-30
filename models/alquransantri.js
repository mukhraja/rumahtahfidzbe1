"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class Alquransantri extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      Alquransantri.belongsTo(models.Santri, { foreignKey: "santriId" });
    }
  }
  Alquransantri.init(
    {
      juz: DataTypes.STRING,
      surah: DataTypes.STRING,
      ayat: DataTypes.STRING,
      halaman: DataTypes.STRING,
      tgl_selesai: DataTypes.DATE,
      ket: DataTypes.STRING,
      santriId: DataTypes.STRING,
    },
    {
      sequelize,
      modelName: "Alquransantri",
    }
  );
  return Alquransantri;
};
