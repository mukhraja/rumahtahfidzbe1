"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class Surahpendeksantri extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      Surahpendeksantri.belongsTo(models.Santri, { foreignKey: "santriId" });
    }
  }
  Surahpendeksantri.init(
    {
      name: DataTypes.STRING,
      tgl_selesai: DataTypes.DATE,
      ket: DataTypes.STRING,
      santriId: DataTypes.STRING,
    },
    {
      sequelize,
      modelName: "Surahpendeksantri",
    }
  );
  return Surahpendeksantri;
};
