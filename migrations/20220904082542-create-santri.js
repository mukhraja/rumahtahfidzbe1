"use strict";
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable("Santris", {
      id: {
        allowNull: false,
        primaryKey: true,
        type: Sequelize.STRING,
      },
      name: {
        type: Sequelize.STRING,
      },
      nis: {
        type: Sequelize.STRING,
        allowNull: false,
        unique: true,
      },
      datebirth: {
        type: Sequelize.DATE,
      },
      gender: {
        type: Sequelize.STRING,
      },
      tempat: {
        type: Sequelize.STRING,
      },
      address: {
        type: Sequelize.STRING,
      },
      telephone: {
        type: Sequelize.STRING,
      },
      ayah: {
        type: Sequelize.STRING,
      },
      ibu: {
        type: Sequelize.STRING,
      },
      photo: {
        type: Sequelize.STRING,
      },
      mulai_masuk: {
        type: Sequelize.DATE,
      },
      mulai_vakum: {
        type: Sequelize.DATE,
      },
      pondokId: {
        type: Sequelize.STRING,
        references: {
          model: "Pondoks",
          key: "id",
        },
        onUpdate: "cascade",
        onDelete: "cascade",
      },
      userId: {
        type: Sequelize.STRING,
        references: {
          model: "Users",
          key: "id",
        },
        onUpdate: "set null",
        onDelete: "set null",
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE,
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE,
      },
    });
  },
  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable("Santris");
  },
};
