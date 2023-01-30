"use strict";
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable("Alquransantris", {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
      },
      juz: {
        type: Sequelize.STRING,
      },
      surah: {
        type: Sequelize.STRING,
      },
      ayat: {
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
      santriId: {
        type: Sequelize.STRING,
        references: {
          model: "Santris",
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
    await queryInterface.dropTable("Alquransantris");
  },
};
