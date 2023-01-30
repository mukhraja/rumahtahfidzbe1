"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class UserSantri extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  UserSantri.init(
    {
      userId: DataTypes.STRING,
      SantriId: DataTypes.STRING,
    },
    {
      sequelize,
      modelName: "UserSantri",
    }
  );
  return UserSantri;
};
