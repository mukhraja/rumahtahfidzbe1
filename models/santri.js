"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class Santri extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      Santri.hasMany(models.Iqrosantri);
      Santri.hasMany(models.Surahpendeksantri);
      Santri.hasMany(models.Alquransantri);
      Santri.belongsTo(models.Pondok, { foreignKey: "pondokId" });
      Santri.belongsTo(models.Users, { foreignKey: "userId" });
      // Santri.belongsToMany(models.Users, { through: models.UserSantri });
    }
  }
  Santri.init(
    {
      id: {
        primaryKey: true,
        type: DataTypes.STRING,
      },
      name: DataTypes.STRING,
      nis: DataTypes.STRING,
      tempat: DataTypes.STRING,
      datebirth: DataTypes.DATE,
      gender: DataTypes.STRING,
      address: DataTypes.STRING,
      ayah: DataTypes.STRING,
      ibu: DataTypes.STRING,
      telephone: DataTypes.STRING,
      photo: DataTypes.STRING,
      mulai_masuk: DataTypes.DATE,
      mulai_vakum: DataTypes.DATE,
      pondokId: DataTypes.STRING,
      userId: DataTypes.STRING,
    },
    {
      sequelize,
      modelName: "Santri",
    }
  );
  return Santri;
};
