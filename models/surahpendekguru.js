"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class Surahpendekguru extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      Surahpendekguru.belongsTo(models.Guru, { foreignKey: "guruId" });
    }
  }
  Surahpendekguru.init(
    {
      name: DataTypes.STRING,
      tgl_selesai: DataTypes.DATE,
      ket: DataTypes.STRING,
      guruId: DataTypes.STRING,
    },
    {
      sequelize,
      modelName: "Surahpendekguru",
    }
  );
  return Surahpendekguru;
};
