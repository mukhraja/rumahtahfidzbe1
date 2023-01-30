"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class Pondok extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      Pondok.hasMany(models.Santri);
      Pondok.hasMany(models.Guru);
      Pondok.hasMany(models.Users);
      Pondok.belongsTo(models.Masterpondok, { foreignKey: "masterpondokId" });
    }
  }
  Pondok.init(
    {
      id: {
        primaryKey: true,
        type: DataTypes.STRING,
      },
      name: DataTypes.STRING,
      nit: DataTypes.STRING,
      address: DataTypes.STRING,
      telephone: DataTypes.STRING,
      chief: DataTypes.STRING,
      logo: DataTypes.STRING,
      photo: DataTypes.STRING,
      masterpondokId: DataTypes.STRING,
    },
    {
      sequelize,
      modelName: "Pondok",
    }
  );
  return Pondok;
};
