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
      "Santris",
      [
        {
          id: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a8",
          name: "Aji Setiaji",
          nis: "20220907",
          datebirth: new Date(),
          gender: "Pria",
          tempat: "Padang",
          address: "Jalan Samiban Ayam",
          ayah: "Budi Darma Putra",
          ibu: "Maryam",
          telephone: "082177751041",
          photo: "ajisetiaji.jpg",
          mulai_masuk: new Date(),
          mulai_vakum: new Date(),
          pondokId: "96f95aea-ef38-4623-82af-979c383bbb37",
          userId: "8ce3ed88-34e4-4fb2-baa7-26b6151a43fc",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a9",
          name: "Yuliana Safiri",
          nis: "20220908",
          datebirth: new Date(),
          gender: "Pria",
          tempat: "Padang",
          address: "Jalan Samiban Ayam",
          ayah: "Budi Darma Putra",
          ibu: "Maryam",
          telephone: "082177751041",
          photo: "ajisetiaji.jpg",
          mulai_masuk: new Date(),
          mulai_vakum: new Date(),
          pondokId: "96f95aea-ef38-4623-82af-979c383bbb37",
          userId: "8ce3ed88-34e4-4fb2-baa7-26b6151a43fc",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "4aeb9b02-0ceb-4a52-9d55-38ad38f008b1",
          name: "Muhammad Panji Kurniawan",
          nis: "20220909",
          datebirth: new Date(),
          gender: "Pria",
          tempat: "Padang",
          address: "Jalan Samiban Ayam",
          ayah: "Budi Darma Putra",
          ibu: "Maryam",
          telephone: "082177751041",
          photo: "ajisetiaji.jpg",
          mulai_masuk: new Date(),
          mulai_vakum: new Date(),
          pondokId: "96f95aea-ef38-4623-82af-979c383bbb37",
          userId: "1c7258f8-0ac0-4c36-aba2-94ba3f4f3042",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "4aeb9b02-0ceb-4a52-9d55-38ad38f008b2",
          name: "Marniati",
          nis: "20220910",
          datebirth: new Date(),
          gender: "Pria",
          tempat: "Padang",
          address: "Jalan Samiban Ayam",
          ayah: "Budi Darma Putra",
          ibu: "Maryam",
          telephone: "082177751041",
          photo: "ajisetiaji.jpg",
          mulai_masuk: new Date(),
          mulai_vakum: new Date(),
          pondokId: "96f95aea-ef38-4623-82af-979c383bbb37",
          userId: "1c7258f8-0ac0-4c36-aba2-94ba3f4f3042",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "4aeb9b02-0ceb-4a52-9d55-38ad38f008b3",
          name: "Mahessa",
          nis: "20220911",
          datebirth: new Date(),
          gender: "Pria",
          tempat: "Padang",
          address: "Jalan Samiban Ayam",
          ayah: "Budi Darma Putra",
          ibu: "Maryam",
          telephone: "082177751041",
          photo: "ajisetiaji.jpg",
          mulai_masuk: new Date(),
          mulai_vakum: new Date(),
          pondokId: "5a7bee8c-3ac3-4542-b792-5fe7806077b4",
          userId: "1c7258f8-0ac0-4c36-aba2-94ba3f4f3042",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "4aeb9b02-0ceb-4a52-9d55-38ad38f008b4",
          name: "Irfan",
          nis: "20220912",
          datebirth: new Date(),
          gender: "Pria",
          tempat: "Padang",
          address: "Jalan Samiban Ayam",
          ayah: "Budi Darma Putra",
          ibu: "Maryam",
          telephone: "082177751041",
          photo: "ajisetiaji.jpg",
          mulai_masuk: new Date(),
          mulai_vakum: new Date(),
          pondokId: "5a7bee8c-3ac3-4542-b792-5fe7806077b4",
          userId: "1c7258f8-0ac0-4c36-aba2-94ba3f4f3045",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "4aeb9b02-0ceb-4a52-9d55-38ad38f008b5",
          name: "Fadlan",
          nis: "20220913",
          datebirth: new Date(),
          gender: "Pria",
          tempat: "Padang",
          address: "Jalan Samiban Ayam",
          ayah: "Budi Darma Putra",
          ibu: "Maryam",
          telephone: "082177751041",
          photo: "ajisetiaji.jpg",
          mulai_masuk: new Date(),
          mulai_vakum: new Date(),
          pondokId: "5a7bee8c-3ac3-4542-b792-5fe7806077b4",
          userId: "1c7258f8-0ac0-4c36-aba2-94ba3f4f3045",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "4aeb9b02-0ceb-4a52-9d55-38ad38f008b6",
          name: "Nizar",
          nis: "20220914",
          datebirth: new Date(),
          gender: "Pria",
          tempat: "Padang",
          address: "Jalan Samiban Ayam",
          ayah: "Budi Darma Putra",
          ibu: "Maryam",
          telephone: "082177751041",
          photo: "ajisetiaji.jpg",
          mulai_masuk: new Date(),
          mulai_vakum: new Date(),
          pondokId: "5a7bee8c-3ac3-4542-b792-5fe7806077b4",
          userId: "1c7258f8-0ac0-4c36-aba2-94ba3f4f3048",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "4aeb9b02-0ceb-4a52-9d55-38ad38f008b7",
          name: "Ilham",
          nis: "20220915",
          datebirth: new Date(),
          gender: "Pria",
          tempat: "Padang",
          address: "Jalan Samiban Ayam",
          ayah: "Budi Darma Putra",
          ibu: "Maryam",
          telephone: "082177751041",
          photo: "ajisetiaji.jpg",
          mulai_masuk: new Date(),
          mulai_vakum: new Date(),
          pondokId: "5a7bee8c-3ac3-4542-b792-5fe7806077b4",
          userId: "1c7258f8-0ac0-4c36-aba2-94ba3f4f3048",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "4aeb9b02-0ceb-4a52-9d55-38ad38f008b8",
          name: "Sabil",
          nis: "20220916",
          datebirth: new Date(),
          gender: "Pria",
          tempat: "Padang",
          address: "Jalan Samiban Ayam",
          ayah: "Budi Darma Putra",
          ibu: "Maryam",
          telephone: "082177751041",
          photo: "ajisetiaji.jpg",
          mulai_masuk: new Date(),
          mulai_vakum: new Date(),
          pondokId: "e3028fca-6d4a-4c80-8e09-14d253dac964",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "4aeb9b02-0ceb-4a52-9d55-38ad38f008b9",
          name: "MitaZu",
          nis: "20220917",
          datebirth: new Date(),
          gender: "Pria",
          tempat: "Padang",
          address: "Jalan Samiban Ayam",
          ayah: "Budi Darma Putra",
          ibu: "Maryam",
          telephone: "082177751041",
          photo: "ajisetiaji.jpg",
          mulai_masuk: new Date(),
          mulai_vakum: new Date(),
          pondokId: "e3028fca-6d4a-4c80-8e09-14d253dac964",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c2",
          name: "Ulfa",
          nis: "20220918",
          datebirth: new Date(),
          gender: "Pria",
          tempat: "Padang",
          address: "Jalan Samiban Ayam",
          ayah: "Budi Darma Putra",
          ibu: "Maryam",
          telephone: "082177751041",
          photo: "ajisetiaji.jpg",
          mulai_masuk: new Date(),
          mulai_vakum: new Date(),
          pondokId: "e3028fca-6d4a-4c80-8e09-14d253dac964",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c3",
          name: "Nukhi",
          nis: "20220919",
          datebirth: new Date(),
          gender: "Pria",
          tempat: "Padang",
          address: "Jalan Samiban Ayam",
          ayah: "Budi Darma Putra",
          ibu: "Maryam",
          telephone: "082177751041",
          photo: "ajisetiaji.jpg",
          mulai_masuk: new Date(),
          mulai_vakum: new Date(),
          pondokId: "e3028fca-6d4a-4c80-8e09-14d253dac964",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c4",
          name: "Elfira",
          nis: "20220920",
          datebirth: new Date(),
          gender: "Pria",
          tempat: "Padang",
          address: "Jalan Samiban Ayam",
          ayah: "Budi Darma Putra",
          ibu: "Maryam",
          telephone: "082177751041",
          photo: "ajisetiaji.jpg",
          mulai_masuk: new Date(),
          mulai_vakum: new Date(),
          pondokId: "e3028fca-6d4a-4c80-8e09-14d253dac964",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c5",
          name: "Kangkung",
          nis: "20220921",
          datebirth: new Date(),
          gender: "Pria",
          tempat: "Padang",
          address: "Jalan Samiban Ayam",
          ayah: "Budi Darma Putra",
          ibu: "Maryam",
          telephone: "082177751041",
          photo: "ajisetiaji.jpg",
          mulai_masuk: new Date(),
          mulai_vakum: new Date(),
          pondokId: "96f95aea-ef38-4623-82af-979c383bbb36",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c6",
          name: "Bayam",
          nis: "20220922",
          datebirth: new Date(),
          gender: "Pria",
          tempat: "Padang",
          address: "Jalan Samiban Ayam",
          ayah: "Budi Darma Putra",
          ibu: "Maryam",
          telephone: "082177751041",
          photo: "ajisetiaji.jpg",
          mulai_masuk: new Date(),
          mulai_vakum: new Date(),
          pondokId: "96f95aea-ef38-4623-82af-979c383bbb36",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c7",
          name: "Singkong",
          nis: "20220923",
          datebirth: new Date(),
          gender: "Pria",
          tempat: "Padang",
          address: "Jalan Samiban Ayam",
          ayah: "Budi Darma Putra",
          ibu: "Maryam",
          telephone: "082177751041",
          photo: "ajisetiaji.jpg",
          mulai_masuk: new Date(),
          mulai_vakum: new Date(),
          pondokId: "96f95aea-ef38-4623-82af-979c383bbb36",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c8",
          name: "Wortel",
          nis: "20220924",
          datebirth: new Date(),
          gender: "Pria",
          tempat: "Padang",
          address: "Jalan Samiban Ayam",
          ayah: "Budi Darma Putra",
          ibu: "Maryam",
          telephone: "082177751041",
          photo: "ajisetiaji.jpg",
          mulai_masuk: new Date(),
          mulai_vakum: new Date(),
          pondokId: "96f95aea-ef38-4623-82af-979c383bbb36",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c9",
          name: "Apel",
          nis: "20220925",
          datebirth: new Date(),
          gender: "Pria",
          tempat: "Padang",
          address: "Jalan Samiban Ayam",
          ayah: "Budi Darma Putra",
          ibu: "Maryam",
          telephone: "082177751041",
          photo: "ajisetiaji.jpg",
          mulai_masuk: new Date(),
          mulai_vakum: new Date(),
          pondokId: "e3028fca-6d4a-4c80-8e09-14d253dac964",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c10",
          name: "Mangga",
          nis: "20220926",
          datebirth: new Date(),
          gender: "Pria",
          tempat: "Padang",
          address: "Jalan Samiban Ayam",
          ayah: "Budi Darma Putra",
          ibu: "Maryam",
          telephone: "082177751041",
          photo: "ajisetiaji.jpg",
          mulai_masuk: new Date(),
          mulai_vakum: new Date(),
          pondokId: "e3028fca-6d4a-4c80-8e09-14d253dac964",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c11",
          name: "Manggis",
          nis: "20220927",
          datebirth: new Date(),
          gender: "Pria",
          tempat: "Padang",
          address: "Jalan Samiban Ayam",
          ayah: "Budi Darma Putra",
          ibu: "Maryam",
          telephone: "082177751041",
          photo: "ajisetiaji.jpg",
          mulai_masuk: new Date(),
          mulai_vakum: new Date(),
          pondokId: "e3028fca-6d4a-4c80-8e09-14d253dac964",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c12",
          name: "Anggur",
          nis: "20220928",
          datebirth: new Date(),
          gender: "Pria",
          tempat: "Padang",
          address: "Jalan Samiban Ayam",
          ayah: "Budi Darma Putra",
          ibu: "Maryam",
          telephone: "082177751041",
          photo: "ajisetiaji.jpg",
          mulai_masuk: new Date(),
          mulai_vakum: new Date(),
          pondokId: "e3028fca-6d4a-4c80-8e09-14d253dac964",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c13",
          name: "Nangka",
          nis: "20220929",
          datebirth: new Date(),
          gender: "Pria",
          tempat: "Padang",
          address: "Jalan Samiban Ayam",
          ayah: "Budi Darma Putra",
          ibu: "Maryam",
          telephone: "082177751041",
          photo: "ajisetiaji.jpg",
          mulai_masuk: new Date(),
          mulai_vakum: new Date(),
          pondokId: "e3028fca-6d4a-4c80-8e09-14d253dac965",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c14",
          name: "Semangka",
          nis: "20220930",
          datebirth: new Date(),
          gender: "Pria",
          tempat: "Padang",
          address: "Jalan Samiban Ayam",
          ayah: "Budi Darma Putra",
          ibu: "Maryam",
          telephone: "082177751041",
          photo: "ajisetiaji.jpg",
          mulai_masuk: new Date(),
          mulai_vakum: new Date(),
          pondokId: "e3028fca-6d4a-4c80-8e09-14d253dac965",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c15",
          name: "Durian",
          nis: "20220931",
          datebirth: new Date(),
          gender: "Pria",
          tempat: "Padang",
          address: "Jalan Samiban Ayam",
          ayah: "Budi Darma Putra",
          ibu: "Maryam",
          telephone: "082177751041",
          photo: "ajisetiaji.jpg",
          mulai_masuk: new Date(),
          mulai_vakum: new Date(),
          pondokId: "e3028fca-6d4a-4c80-8e09-14d253dac965",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c16",
          name: "Merkisa",
          nis: "20220932",
          datebirth: new Date(),
          gender: "Pria",
          tempat: "Padang",
          address: "Jalan Samiban Ayam",
          ayah: "Budi Darma Putra",
          ibu: "Maryam",
          telephone: "082177751041",
          photo: "ajisetiaji.jpg",
          mulai_masuk: new Date(),
          mulai_vakum: new Date(),
          pondokId: "e3028fca-6d4a-4c80-8e09-14d253dac965",
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
    await queryInterface.bulkDelete("Santris", null, {});
  },
};
