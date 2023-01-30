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
      "Pondoks",
      [
        {
          id: "96f95aea-ef38-4623-82af-979c383bbb35",
          nit: "RTS0000",
          name: "ADMIN",
          address: "JALAN PADANG",
          telephone: "08217772121",
          chief: "Ust Adri",
          logo: "",
          photo: "logoadmin.png",
          masterpondokId: "96f95aea-ef38-4623-82af-979c383bbb01",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "96f95aea-ef38-4623-82af-979c383bbb36",
          nit: "RTS0001",
          name: "TAZKIYAHCABANG1",
          address: "",
          telephone: "",
          chief: "",
          logo: "",
          photo: "logoadmin.png",
          masterpondokId: "96f95aea-ef38-4623-82af-979c383bbb02",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "96f95aea-ef38-4623-82af-979c383bbb37",
          nit: "RTS0002",
          name: "TAZKIYAHCABANG2",
          address: "Jalan Padang Salam No.285",
          telephone: "08218233445",
          chief: "Ustad Adri",
          logo: "",
          photo: "logo.png",
          masterpondokId: "96f95aea-ef38-4623-82af-979c383bbb02",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "5a7bee8c-3ac3-4542-b792-5fe7806077b4",
          nit: "RTS0003",
          name: "TAZKIYAHCABANG3",
          address: "Jalan Padang Salam No.285",
          telephone: "08218233445",
          chief: "Ustad Dian",
          logo: "",
          photo: "logo.png",
          masterpondokId: "96f95aea-ef38-4623-82af-979c383bbb02",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "e3028fca-6d4a-4c80-8e09-14d253dac964",
          nit: "RTS0004",
          name: "HIKMAHCABANG1",
          address: "Jalan Padang Salam No.285",
          telephone: "08218233445",
          chief: "Ustad Yiansyah",
          logo: "",
          photo: "logo.png",
          masterpondokId: "5a7bee8c-3ac3-4542-b792-5fe780607703",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "e3028fca-6d4a-4c80-8e09-14d253dac965",
          nit: "RTS0005",
          name: "HIKMAHCABANG2",
          address: "Jalan Padang Salam No.285",
          telephone: "08218233445",
          chief: "Ustad Yiansyah",
          logo: "",
          photo: "logo.png",
          masterpondokId: "5a7bee8c-3ac3-4542-b792-5fe780607703",
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
    await queryInterface.bulkDelete("Pondoks", null, {});
  },
};
