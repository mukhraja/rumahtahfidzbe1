"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class Iqrosantri extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      Iqrosantri.belongsTo(models.Santri, { foreignKey: "santriId" });
    }
  }
  Iqrosantri.init(
    {
      name: DataTypes.STRING,
      halaman: DataTypes.STRING,
      tgl_selesai: DataTypes.DATE,
      ket: DataTypes.STRING,
      santriId: DataTypes.STRING,
    },
    {
      sequelize,
      modelName: "Iqrosantri",
    }
  );
  return Iqrosantri;
};
