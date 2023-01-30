"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class Iqroguru extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      Iqroguru.belongsTo(models.Guru, { foreignKey: "guruId" });
    }
  }
  Iqroguru.init(
    {
      name: DataTypes.STRING,
      halaman: DataTypes.STRING,
      tgl_selesai: DataTypes.DATE,
      ket: DataTypes.STRING,
      guruId: DataTypes.STRING,
    },
    {
      sequelize,
      modelName: "Iqroguru",
    }
  );
  return Iqroguru;
};
