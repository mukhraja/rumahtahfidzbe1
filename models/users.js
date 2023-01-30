"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class Users extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      Users.belongsTo(models.Roles, { foreignKey: "roleId" });
      // Users.belongsToMany(models.Santri, { through: models.UserSantri });
      Users.hasMany(models.Santri);
      Users.belongsTo(models.Pondok, { foreignKey: "pondokId" });
    }
  }
  Users.init(
    {
      id: {
        primaryKey: true,
        type: DataTypes.STRING,
      },
      name: DataTypes.STRING,
      password: DataTypes.STRING,
      email: DataTypes.STRING,
      address: DataTypes.STRING,
      age: DataTypes.STRING,
      gender: DataTypes.STRING,
      datebirth: DataTypes.DATE,
      telephone: DataTypes.STRING,
      photo: DataTypes.STRING,
      refresh_token: DataTypes.TEXT,
      roleId: DataTypes.STRING,
      pondokId: DataTypes.STRING,
    },
    {
      sequelize,
      modelName: "Users",
    }
  );
  return Users;
};
