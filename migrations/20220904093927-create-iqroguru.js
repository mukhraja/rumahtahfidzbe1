"use strict";
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable("Iqrogurus", {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
      },
      name: {
        type: Sequelize.STRING,
      },
      halaman: {
        type: Sequelize.STRING,
      },
      tgl_selesai: {
        type: Sequelize.DATE,
      },
      ket: {
        type: Sequelize.STRING,
      },
      guruId: {
        type: Sequelize.STRING,
        references: {
          model: "Gurus",
          key: "id",
        },
        onUpdate: "cascade",
        onDelete: "cascade",
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
    await queryInterface.dropTable("Iqrogurus");
  },
};
