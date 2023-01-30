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
      "Alqurangurus",
      [
        {
          id: 1,
          juz: "12",
          surah: "Al maidah",
          halaman: "14",
          tgl_selesai: new Date(),
          ket: "Tuntas",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50466",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: 2,
          juz: "2",
          surah: "Al Baqarah",
          halaman: "20",
          tgl_selesai: new Date(),
          ket: "Tuntas",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50466",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: 3,
          juz: "20",
          surah: "An Nasr",
          halaman: "20",
          tgl_selesai: new Date(),
          ket: "Tuntas",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50466",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: 4,
          juz: "18",
          surah: "An Naba",
          halaman: "22",
          tgl_selesai: new Date(),
          ket: "Tuntas lanjut",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50465",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: 5,
          juz: "23",
          surah: "Al-Kafirun",
          halaman: "90",
          tgl_selesai: new Date(),
          ket: "Tuntas lanjut",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50465",
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

    await queryInterface.bulkDelete("Alqurangurus", null, {});
  },
};
