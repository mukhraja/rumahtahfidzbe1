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
    // await queryInterface.bulkInsert(
    //   "UserSantris",
    //   [
    //     {
    //       UserId: "8ce3ed88-34e4-4fb2-baa7-26b6151a43fc",
    //       SantriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a8",
    //       createdAt: new Date(),
    //       updatedAt: new Date(),
    //     },
    //     {
    //       UserId: "8ce3ed88-34e4-4fb2-baa7-26b6151a43fc",
    //       SantriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a9",
    //       createdAt: new Date(),
    //       updatedAt: new Date(),
    //     },
    //     {
    //       UserId: "1c7258f8-0ac0-4c36-aba2-94ba3f4f3042",
    //       SantriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008b1",
    //       createdAt: new Date(),
    //       updatedAt: new Date(),
    //     },
    //     {
    //       UserId: "1c7258f8-0ac0-4c36-aba2-94ba3f4f3042",
    //       SantriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008b2",
    //       createdAt: new Date(),
    //       updatedAt: new Date(),
    //     },
    //     {
    //       UserId: "1c7258f8-0ac0-4c36-aba2-94ba3f4f3042",
    //       SantriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008b3",
    //       createdAt: new Date(),
    //       updatedAt: new Date(),
    //     },
    //     {
    //       UserId: "1c7258f8-0ac0-4c36-aba2-94ba3f4f3045",
    //       SantriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008b4",
    //       createdAt: new Date(),
    //       updatedAt: new Date(),
    //     },
    //     {
    //       UserId: "1c7258f8-0ac0-4c36-aba2-94ba3f4f3045",
    //       SantriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008b5",
    //       createdAt: new Date(),
    //       updatedAt: new Date(),
    //     },
    //     {
    //       UserId: "1c7258f8-0ac0-4c36-aba2-94ba3f4f3048",
    //       SantriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008b6",
    //       createdAt: new Date(),
    //       updatedAt: new Date(),
    //     },
    //     {
    //       UserId: "1c7258f8-0ac0-4c36-aba2-94ba3f4f3048",
    //       SantriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008b7",
    //       createdAt: new Date(),
    //       updatedAt: new Date(),
    //     },
    //   ],
    //   {}
    // );
  },

  async down(queryInterface, Sequelize) {
    /**
     * Add commands to revert seed here.
     *
     * Example:
     * await queryInterface.bulkDelete('People', null, {});
     */
    // await queryInterface.bulkDelete("UserSantris", null, {});
  },
};
