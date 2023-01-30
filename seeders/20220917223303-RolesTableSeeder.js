"use strict";
const uuid = require("uuid");

module.exports = {
  async up(queryInterface, Sequelize) {
    /**
     * Add seed commands here.
     *
     * Example:
     * await queryInterface.bulkInsert('People', [{
     *   name: 'John Doe',
     *   isBetaMember: false
     * }], {});
     */
    await queryInterface.bulkInsert(
      "Roles",
      [
        {
          id: "8b273d68-fe09-422d-a660-af3d8312f883",
          name: "Master Admin",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "8b273d68-fe09-422d-a660-af3d8312f884",
          name: "admin",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "1b864518-299d-469c-b270-4d4b9d5b120f",
          name: "donatur",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "1a2832f9-ceb7-4ff9-930a-af176c88dcc5",
          name: "ortu",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
      ],
      {}
    );
  },

  async down(queryInterface, Sequelize) {
    /**
     * Add commands to revert seed here.
     *
     * Example:
     * await queryInterface.bulkDelete('People', null, {});
     */
    await queryInterface.bulkDelete("Roles", null, {});
  },
};
