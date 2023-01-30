"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class Guru extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      Guru.hasMany(models.Iqroguru);
      Guru.hasMany(models.Surahpendekguru);
      Guru.hasMany(models.Alquranguru);
      Guru.belongsTo(models.Pondok, { foreignKey: "pondokId" });
    }
  }
  Guru.init(
    {
      id: {
        primaryKey: true,
        type: DataTypes.STRING,
      },
      name: DataTypes.STRING,
      niu: DataTypes.STRING,
      tempat: DataTypes.STRING,
      datebirth: DataTypes.DATE,
      gender: DataTypes.STRING,
      telephone: DataTypes.STRING,
      address: DataTypes.STRING,
      ayah: DataTypes.STRING,
      ibu: DataTypes.STRING,
      mulai_masuk: DataTypes.DATE,
      mulai_vakum: DataTypes.DATE,
      photo: DataTypes.STRING,
      pondokId: DataTypes.STRING,
    },
    {
      sequelize,
      modelName: "Guru",
    }
  );
  return Guru;
};
