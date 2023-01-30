"use strict";

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
      "Iqrogurus",
      [
        {
          id: 1,
          name: "IQRO 1",
          halaman: "3",
          tgl_selesai: new Date(),
          ket: "Tuntas",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50462",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: 2,
          name: "IQRO 1",
          halaman: "6",
          tgl_selesai: new Date(),
          ket: "Tuntas",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50462",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: 3,
          name: "IQRO 1",
          halaman: "10",
          tgl_selesai: new Date(),
          ket: "selesai",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50462",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: 4,
          name: "IQRO 2",
          halaman: "12",
          tgl_selesai: new Date(),
          ket: "Tuntas",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50462",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: 5,
          name: "IQRO 2",
          halaman: "17",
          tgl_selesai: new Date(),
          ket: "Tuntas",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50462",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: 6,
          name: "IQRO 2",
          halaman: "20",
          tgl_selesai: new Date(),
          ket: "selesai",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50462",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: 7,
          name: "IQRO 3",
          halaman: "21",
          tgl_selesai: new Date(),
          ket: "Tuntas",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50462",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: 8,
          name: "IQRO 3",
          halaman: "29",
          tgl_selesai: new Date(),
          ket: "Tuntas",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50462",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: 9,
          name: "IQRO 1",
          halaman: "5",
          tgl_selesai: new Date(),
          ket: "Tuntas lanjut",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50466",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: 10,
          name: "IQRO 1",
          halaman: "8",
          tgl_selesai: new Date(),
          ket: "Tuntas",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50466",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: 11,
          name: "IQRO 1",
          halaman: "20",
          tgl_selesai: new Date(),
          ket: "selesai",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50466",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: 12,
          name: "IQRO 2",
          halaman: "28",
          tgl_selesai: new Date(),
          ket: "Tuntas lanjut",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50466",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: 13,
          name: "IQRO 2",
          halaman: "30",
          tgl_selesai: new Date(),
          ket: "Tuntas",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50466",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: 14,
          name: "IQRO 2",
          halaman: "35",
          tgl_selesai: new Date(),
          ket: "selesai",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50466",
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
    await queryInterface.bulkDelete("Iqrogurus", null, {});
  },
};
