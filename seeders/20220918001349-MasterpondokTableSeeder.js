"use strict";

/** @type {import('sequelize-cli').Migration} */
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
      "Masterpondoks",
      [
        {
          id: "96f95aea-ef38-4623-82af-979c383bbb01",
          nit: "RTS0000",
          name: "ADMIN",
          address: "",
          telephone: "",
          chief: "",
          logo: "",
          photo: "logoadmin.png",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "96f95aea-ef38-4623-82af-979c383bbb02",
          nit: "RTS0001",
          name: "Rumah Tahfidz Tazkiyah",
          address: "Jalan Padang Salam No.285",
          telephone: "08218233445",
          chief: "Ustad Adri",
          logo: "",
          photo: "logo.png",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "5a7bee8c-3ac3-4542-b792-5fe780607703",
          nit: "RTS0002",
          name: "Rumah Tahfidz Al Hikmah",
          address: "Jalan Padang Salam No.285",
          telephone: "08218233445",
          chief: "Ustad Dian",
          logo: "",
          photo: "logo.png",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "e3028fca-6d4a-4c80-8e09-14d253dac904",
          nit: "RTS0003",
          name: "Rumah Tahfidz Al Ikhlas",
          address: "Jalan Padang Salam No.285",
          telephone: "08218233445",
          chief: "Ustad Yiansyah",
          logo: "",
          photo: "logo.png",
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
    await queryInterface.bulkDelete("Masterpondoks", null, {});
  },
};
