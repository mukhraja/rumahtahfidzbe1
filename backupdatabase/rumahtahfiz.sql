/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: alqurangurus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alqurangurus`;
CREATE TABLE `alqurangurus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `juz` varchar(255) DEFAULT NULL,
  `surah` varchar(255) DEFAULT NULL,
  `ayat` varchar(255) DEFAULT NULL,
  `halaman` varchar(255) DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `guruId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `guruId` (`guruId`),
  CONSTRAINT `alqurangurus_ibfk_1` FOREIGN KEY (`guruId`) REFERENCES `gurus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 6 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: alquransantris
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alquransantris`;
CREATE TABLE `alquransantris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `juz` varchar(255) DEFAULT NULL,
  `surah` varchar(255) DEFAULT NULL,
  `ayat` varchar(255) DEFAULT NULL,
  `halaman` varchar(255) DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `santriId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `santriId` (`santriId`),
  CONSTRAINT `alquransantris_ibfk_1` FOREIGN KEY (`santriId`) REFERENCES `santris` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 35 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: gurus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gurus`;
CREATE TABLE `gurus` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `niu` varchar(255) NOT NULL,
  `tempat` varchar(255) DEFAULT NULL,
  `datebirth` datetime DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `ayah` varchar(255) DEFAULT NULL,
  `ibu` varchar(255) DEFAULT NULL,
  `mulai_masuk` datetime DEFAULT NULL,
  `mulai_vakum` datetime DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `pondokId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `niu` (`niu`),
  KEY `pondokId` (`pondokId`),
  CONSTRAINT `gurus_ibfk_1` FOREIGN KEY (`pondokId`) REFERENCES `pondoks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: iqrogurus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `iqrogurus`;
CREATE TABLE `iqrogurus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `halaman` varchar(255) DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `guruId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `guruId` (`guruId`),
  CONSTRAINT `iqrogurus_ibfk_1` FOREIGN KEY (`guruId`) REFERENCES `gurus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 15 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: iqrosantris
# ------------------------------------------------------------

DROP TABLE IF EXISTS `iqrosantris`;
CREATE TABLE `iqrosantris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `halaman` varchar(255) DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `santriId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `santriId` (`santriId`),
  CONSTRAINT `iqrosantris_ibfk_1` FOREIGN KEY (`santriId`) REFERENCES `santris` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 47 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: masterpondoks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `masterpondoks`;
CREATE TABLE `masterpondoks` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nit` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `chief` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `nit` (`nit`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: pondoks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pondoks`;
CREATE TABLE `pondoks` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nit` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `chief` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `masterpondokId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `nit` (`nit`),
  KEY `masterpondokId` (`masterpondokId`),
  CONSTRAINT `pondoks_ibfk_1` FOREIGN KEY (`masterpondokId`) REFERENCES `masterpondoks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: santris
# ------------------------------------------------------------

DROP TABLE IF EXISTS `santris`;
CREATE TABLE `santris` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nis` varchar(255) NOT NULL,
  `datebirth` datetime DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `tempat` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `ayah` varchar(255) DEFAULT NULL,
  `ibu` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `mulai_masuk` datetime DEFAULT NULL,
  `mulai_vakum` datetime DEFAULT NULL,
  `pondokId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nis` (`nis`),
  KEY `pondokId` (`pondokId`),
  KEY `userId` (`userId`),
  CONSTRAINT `santris_ibfk_1` FOREIGN KEY (`pondokId`) REFERENCES `pondoks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `santris_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE
  SET
  NULL ON UPDATE
  SET
  NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: sequelizemeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sequelizemeta`;
CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: surahpendekgurus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `surahpendekgurus`;
CREATE TABLE `surahpendekgurus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `guruId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `guruId` (`guruId`),
  CONSTRAINT `surahpendekgurus_ibfk_1` FOREIGN KEY (`guruId`) REFERENCES `gurus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 7 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: surahpendeksantris
# ------------------------------------------------------------

DROP TABLE IF EXISTS `surahpendeksantris`;
CREATE TABLE `surahpendeksantris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `santriId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `santriId` (`santriId`),
  CONSTRAINT `surahpendeksantris_ibfk_1` FOREIGN KEY (`santriId`) REFERENCES `santris` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 40 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `datebirth` datetime DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `refresh_token` text DEFAULT NULL,
  `roleId` varchar(255) DEFAULT NULL,
  `pondokId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `roleId` (`roleId`),
  KEY `pondokId` (`pondokId`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`pondokId`) REFERENCES `pondoks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: usersantris
# ------------------------------------------------------------

DROP TABLE IF EXISTS `usersantris`;
CREATE TABLE `usersantris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) DEFAULT NULL,
  `SantriId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: alqurangurus
# ------------------------------------------------------------

INSERT INTO
  `alqurangurus` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    1,
    '12',
    'Al maidah',
    NULL,
    '14',
    '2023-01-04 12:44:23',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alqurangurus` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    2,
    '2',
    'Al Baqarah',
    NULL,
    '20',
    '2023-01-04 12:44:23',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alqurangurus` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    3,
    '20',
    'An Nasr',
    NULL,
    '20',
    '2023-01-04 12:44:23',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alqurangurus` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    4,
    '18',
    'An Naba',
    NULL,
    '22',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '245d57c6-0076-44ea-9876-dd2d3da50465',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alqurangurus` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    5,
    '23',
    'Al-Kafirun',
    NULL,
    '90',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '245d57c6-0076-44ea-9876-dd2d3da50465',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: alquransantris
# ------------------------------------------------------------

INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    1,
    '12',
    'Al maidah',
    NULL,
    '14',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    2,
    '2',
    'Al Baqarah',
    NULL,
    '20',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    3,
    '20',
    'An Nasr',
    NULL,
    '20',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    4,
    '18',
    'An Naba',
    NULL,
    '22',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    5,
    '23',
    'Al-Kafirun',
    NULL,
    '90',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    6,
    '20',
    'An Nasr',
    NULL,
    '20',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b1',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    7,
    '18',
    'An Naba',
    NULL,
    '22',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b1',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    8,
    '23',
    'Al-Kafirun',
    NULL,
    '90',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b1',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    9,
    '20',
    'An Nasr',
    NULL,
    '20',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b3',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    10,
    '18',
    'An Naba',
    NULL,
    '22',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b3',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    11,
    '23',
    'Al-Kafirun',
    NULL,
    '90',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b3',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    12,
    '20',
    'An Nasr',
    NULL,
    '20',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b4',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    13,
    '18',
    'An Naba',
    NULL,
    '22',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b4',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    14,
    '23',
    'Al-Kafirun',
    NULL,
    '90',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b4',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    15,
    '20',
    'An Nasr',
    NULL,
    '20',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b6',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    16,
    '18',
    'An Naba',
    NULL,
    '22',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b6',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    17,
    '23',
    'Al-Kafirun',
    NULL,
    '90',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b6',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    18,
    '20',
    'An Nasr',
    NULL,
    '20',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b7',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    19,
    '18',
    'An Naba',
    NULL,
    '22',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b7',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    20,
    '23',
    'Al-Kafirun',
    NULL,
    '90',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b7',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    21,
    '18',
    'An Naba',
    NULL,
    '22',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c3',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    22,
    '23',
    'Al-Kafirun',
    NULL,
    '90',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c3',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    23,
    '18',
    'An Naba',
    NULL,
    '22',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c4',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    24,
    '23',
    'Al-Kafirun',
    NULL,
    '90',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c4',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    25,
    '18',
    'An Naba',
    NULL,
    '22',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c7',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    26,
    '23',
    'Al-Kafirun',
    NULL,
    '90',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c7',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    27,
    '18',
    'An Naba',
    NULL,
    '22',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c8',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    28,
    '23',
    'Al-Kafirun',
    NULL,
    '90',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c8',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    29,
    '18',
    'An Naba',
    NULL,
    '22',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c11',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    30,
    '23',
    'Al-Kafirun',
    NULL,
    '90',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c11',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    31,
    '18',
    'An Naba',
    NULL,
    '22',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c15',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    32,
    '23',
    'Al-Kafirun',
    NULL,
    '90',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c15',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    33,
    '18',
    'An Naba',
    NULL,
    '22',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c14',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    34,
    '23',
    'Al-Kafirun',
    NULL,
    '90',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c14',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: gurus
# ------------------------------------------------------------

INSERT INTO
  `gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50456',
    'Kakak tua',
    'RTU0003',
    'Padang',
    '2023-01-04 12:44:23',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08 00:00:00',
    '2023-10-10 00:00:00',
    'aji.jpg',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50457',
    'cendrawasih',
    'RTU0004',
    'Padang',
    '2023-01-04 12:44:23',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08 00:00:00',
    '2023-10-10 00:00:00',
    'aji.jpg',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50458',
    'kutilang',
    'RTU0005',
    'Padang',
    '2023-01-04 12:44:23',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08 00:00:00',
    '2023-10-10 00:00:00',
    'aji.jpg',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50459',
    'pipit',
    'RTU0006',
    'Padang',
    '2023-01-04 12:44:23',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08 00:00:00',
    '2023-10-10 00:00:00',
    'aji.jpg',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50460',
    'Adriansyah',
    'RTU0007',
    'Padang',
    '2023-01-04 12:44:23',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08 00:00:00',
    '2023-10-10 00:00:00',
    'aji.jpg',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50461',
    'Putra Dwa',
    'RTU0008',
    'Padang',
    '2023-01-04 12:44:23',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08 00:00:00',
    '2023-10-10 00:00:00',
    'aji.jpg',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50462',
    'Candra Dimuka',
    'RTU0009',
    'Padang',
    '2023-01-04 12:44:23',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08 00:00:00',
    '2023-10-10 00:00:00',
    'aji.jpg',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50463',
    'Syailendra',
    'RTU0010',
    'Padang',
    '2023-01-04 12:44:23',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08 00:00:00',
    '2023-10-10 00:00:00',
    'aji.jpg',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50464',
    'Sulaiman',
    'RTU0011',
    'Padang',
    '2023-01-04 12:44:23',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08 00:00:00',
    '2023-10-10 00:00:00',
    'aji.jpg',
    '5a7bee8c-3ac3-4542-b792-5fe7806077b4',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50465',
    'Aliansyah',
    'RTU0012',
    'Padang',
    '2023-01-04 12:44:23',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08 00:00:00',
    '2023-10-10 00:00:00',
    'aji.jpg',
    '5a7bee8c-3ac3-4542-b792-5fe7806077b4',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    'Batara Dwi',
    'RTU0013',
    'Padang',
    '2023-01-04 12:44:23',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08 00:00:00',
    '2023-10-10 00:00:00',
    'aji.jpg',
    '5a7bee8c-3ac3-4542-b792-5fe7806077b4',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50467',
    'Mahduf Munir',
    'RTU0014',
    'Padang',
    '2023-01-04 12:44:23',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08 00:00:00',
    '2023-10-10 00:00:00',
    'aji.jpg',
    '5a7bee8c-3ac3-4542-b792-5fe7806077b4',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50468',
    'Hola Kasih',
    'RTU0015',
    'Padang',
    '2023-01-04 12:44:23',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08 00:00:00',
    '2023-10-10 00:00:00',
    'aji.jpg',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50469',
    'Dwi hasanaha',
    'RTU0017',
    'Padang',
    '2023-01-04 12:44:23',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08 00:00:00',
    '2023-10-10 00:00:00',
    'aji.jpg',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50470',
    'Yansana alika',
    'RTU0018',
    'Padang',
    '2023-01-04 12:44:23',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08 00:00:00',
    '2023-10-10 00:00:00',
    'aji.jpg',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50471',
    'Merak',
    'RTU0019',
    'Padang',
    '2023-01-04 12:44:23',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08 00:00:00',
    '2023-10-10 00:00:00',
    'aji.jpg',
    'e3028fca-6d4a-4c80-8e09-14d253dac965',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50472',
    'Camar',
    'RTU0020',
    'Padang',
    '2023-01-04 12:44:23',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08 00:00:00',
    '2023-10-10 00:00:00',
    'aji.jpg',
    'e3028fca-6d4a-4c80-8e09-14d253dac965',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50473',
    'Wasamanda',
    'RTU0021',
    'Padang',
    '2023-01-04 12:44:23',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08 00:00:00',
    '2023-10-10 00:00:00',
    'aji.jpg',
    'e3028fca-6d4a-4c80-8e09-14d253dac965',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50480',
    'Mutiara',
    'RTU0016',
    'Padang',
    '2023-01-04 12:44:23',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08 00:00:00',
    '2023-10-10 00:00:00',
    'aji.jpg',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: iqrogurus
# ------------------------------------------------------------

INSERT INTO
  `iqrogurus` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    1,
    'IQRO 1',
    '3',
    '2023-01-04 12:44:23',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50462',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrogurus` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    2,
    'IQRO 1',
    '6',
    '2023-01-04 12:44:23',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50462',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrogurus` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    3,
    'IQRO 1',
    '10',
    '2023-01-04 12:44:23',
    'selesai',
    '245d57c6-0076-44ea-9876-dd2d3da50462',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrogurus` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    4,
    'IQRO 2',
    '12',
    '2023-01-04 12:44:23',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50462',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrogurus` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    5,
    'IQRO 2',
    '17',
    '2023-01-04 12:44:23',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50462',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrogurus` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    6,
    'IQRO 2',
    '20',
    '2023-01-04 12:44:23',
    'selesai',
    '245d57c6-0076-44ea-9876-dd2d3da50462',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrogurus` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    7,
    'IQRO 3',
    '21',
    '2023-01-04 12:44:23',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50462',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrogurus` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    8,
    'IQRO 3',
    '29',
    '2023-01-04 12:44:23',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50462',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrogurus` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    9,
    'IQRO 1',
    '5',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrogurus` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    10,
    'IQRO 1',
    '8',
    '2023-01-04 12:44:23',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrogurus` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    11,
    'IQRO 1',
    '20',
    '2023-01-04 12:44:23',
    'selesai',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrogurus` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    12,
    'IQRO 2',
    '28',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrogurus` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    13,
    'IQRO 2',
    '30',
    '2023-01-04 12:44:23',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrogurus` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    14,
    'IQRO 2',
    '35',
    '2023-01-04 12:44:23',
    'selesai',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: iqrosantris
# ------------------------------------------------------------

INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    1,
    'IQRO 1',
    '3',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    2,
    'IQRO 1',
    '6',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    3,
    'IQRO 1',
    '10',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    4,
    'IQRO 2',
    '12',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    5,
    'IQRO 2',
    '17',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    6,
    'IQRO 2',
    '20',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    7,
    'IQRO 3',
    '21',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    8,
    'IQRO 3',
    '29',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    9,
    'IQRO 1',
    '5',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    10,
    'IQRO 1',
    '8',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    11,
    'IQRO 1',
    '20',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    12,
    'IQRO 2',
    '28',
    '2023-01-04 12:44:23',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    13,
    'IQRO 2',
    '30',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    14,
    'IQRO 2',
    '35',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    15,
    'IQRO 2',
    '36',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    16,
    'IQRO 1',
    '6',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b8',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    17,
    'IQRO 1',
    '10',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b8',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    18,
    'IQRO 1',
    '3',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b9',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    19,
    'IQRO 1',
    '6',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b9',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    20,
    'IQRO 1',
    '10',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b9',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    21,
    'IQRO 1',
    '3',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c5',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    22,
    'IQRO 1',
    '6',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c5',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    23,
    'IQRO 1',
    '10',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c5',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    24,
    'IQRO 1',
    '3',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c6',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    25,
    'IQRO 1',
    '6',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c6',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    26,
    'IQRO 1',
    '10',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c6',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    27,
    'IQRO 1',
    '3',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c9',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    28,
    'IQRO 1',
    '6',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c9',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    29,
    'IQRO 1',
    '10',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c9',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    30,
    'IQRO 1',
    '3',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c10',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    31,
    'IQRO 1',
    '6',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c10',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    32,
    'IQRO 1',
    '10',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c10',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    33,
    'IQRO 1',
    '3',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c11',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    34,
    'IQRO 1',
    '6',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c11',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    35,
    'IQRO 1',
    '10',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c11',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    36,
    'IQRO 1',
    '3',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c13',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    37,
    'IQRO 1',
    '6',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c13',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    38,
    'IQRO 1',
    '10',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c13',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    39,
    'IQRO 1',
    '3',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c14',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    40,
    'IQRO 1',
    '6',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c14',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    41,
    'IQRO 1',
    '10',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c14',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    42,
    'IQRO 1',
    '3',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c15',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    43,
    'IQRO 1',
    '6',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c15',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    44,
    'IQRO 1',
    '10',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c15',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    45,
    'IQRO 1',
    '6',
    '2023-01-04 12:44:23',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b1',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    46,
    'IQRO 1',
    '10',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b1',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: masterpondoks
# ------------------------------------------------------------

INSERT INTO
  `masterpondoks` (
    `id`,
    `name`,
    `nit`,
    `address`,
    `telephone`,
    `chief`,
    `logo`,
    `photo`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '5a7bee8c-3ac3-4542-b792-5fe780607703',
    'Rumah Tahfidz Al Hikmah',
    'RTS0002',
    'Jalan Padang Salam No.285',
    '08218233445',
    'Ustad Dian',
    '',
    'logo.png',
    '2023-01-04 12:44:22',
    '2023-01-04 12:44:22'
  );
INSERT INTO
  `masterpondoks` (
    `id`,
    `name`,
    `nit`,
    `address`,
    `telephone`,
    `chief`,
    `logo`,
    `photo`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '96f95aea-ef38-4623-82af-979c383bbb01',
    'ADMIN',
    'RTS0000',
    '',
    '',
    '',
    '',
    'logoadmin.png',
    '2023-01-04 12:44:22',
    '2023-01-04 12:44:22'
  );
INSERT INTO
  `masterpondoks` (
    `id`,
    `name`,
    `nit`,
    `address`,
    `telephone`,
    `chief`,
    `logo`,
    `photo`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '96f95aea-ef38-4623-82af-979c383bbb02',
    'Rumah Tahfidz Tazkiyah',
    'RTS0001',
    'Jalan Padang Salam No.285',
    '08218233445',
    'Ustad Adri',
    '',
    'logo.png',
    '2023-01-04 12:44:22',
    '2023-01-04 12:44:22'
  );
INSERT INTO
  `masterpondoks` (
    `id`,
    `name`,
    `nit`,
    `address`,
    `telephone`,
    `chief`,
    `logo`,
    `photo`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    'e3028fca-6d4a-4c80-8e09-14d253dac904',
    'Rumah Tahfidz Al Ikhlas',
    'RTS0003',
    'Jalan Padang Salam No.285',
    '08218233445',
    'Ustad Yiansyah',
    '',
    'logo.png',
    '2023-01-04 12:44:22',
    '2023-01-04 12:44:22'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: pondoks
# ------------------------------------------------------------

INSERT INTO
  `pondoks` (
    `id`,
    `name`,
    `nit`,
    `address`,
    `telephone`,
    `chief`,
    `logo`,
    `photo`,
    `masterpondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '5a7bee8c-3ac3-4542-b792-5fe7806077b4',
    'TAZKIYAHCABANG3',
    'RTS0003',
    'Jalan Padang Salam No.285',
    '08218233445',
    'Ustad Dian',
    '',
    'logo.png',
    '96f95aea-ef38-4623-82af-979c383bbb02',
    '2023-01-04 12:44:22',
    '2023-01-04 12:44:22'
  );
INSERT INTO
  `pondoks` (
    `id`,
    `name`,
    `nit`,
    `address`,
    `telephone`,
    `chief`,
    `logo`,
    `photo`,
    `masterpondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '96f95aea-ef38-4623-82af-979c383bbb35',
    'ADMIN',
    'RTS0000',
    'JALAN PADANG',
    '08217772121',
    'Ust Adri',
    '',
    'logoadmin.png',
    '96f95aea-ef38-4623-82af-979c383bbb01',
    '2023-01-04 12:44:22',
    '2023-01-04 12:44:22'
  );
INSERT INTO
  `pondoks` (
    `id`,
    `name`,
    `nit`,
    `address`,
    `telephone`,
    `chief`,
    `logo`,
    `photo`,
    `masterpondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '96f95aea-ef38-4623-82af-979c383bbb36',
    'TAZKIYAHCABANG1',
    'RTS0001',
    '',
    '',
    '',
    '',
    'logoadmin.png',
    '96f95aea-ef38-4623-82af-979c383bbb02',
    '2023-01-04 12:44:22',
    '2023-01-04 12:44:22'
  );
INSERT INTO
  `pondoks` (
    `id`,
    `name`,
    `nit`,
    `address`,
    `telephone`,
    `chief`,
    `logo`,
    `photo`,
    `masterpondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '96f95aea-ef38-4623-82af-979c383bbb37',
    'TAZKIYAHCABANG2',
    'RTS0002',
    'Jalan Padang Salam No.285',
    '08218233445',
    'Ustad Adri',
    '',
    'logo.png',
    '96f95aea-ef38-4623-82af-979c383bbb02',
    '2023-01-04 12:44:22',
    '2023-01-04 12:44:22'
  );
INSERT INTO
  `pondoks` (
    `id`,
    `name`,
    `nit`,
    `address`,
    `telephone`,
    `chief`,
    `logo`,
    `photo`,
    `masterpondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    'HIKMAHCABANG1',
    'RTS0004',
    'Jalan Padang Salam No.285',
    '08218233445',
    'Ustad Yiansyah',
    '',
    'logo.png',
    '5a7bee8c-3ac3-4542-b792-5fe780607703',
    '2023-01-04 12:44:22',
    '2023-01-04 12:44:22'
  );
INSERT INTO
  `pondoks` (
    `id`,
    `name`,
    `nit`,
    `address`,
    `telephone`,
    `chief`,
    `logo`,
    `photo`,
    `masterpondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    'e3028fca-6d4a-4c80-8e09-14d253dac965',
    'HIKMAHCABANG2',
    'RTS0005',
    'Jalan Padang Salam No.285',
    '08218233445',
    'Ustad Yiansyah',
    '',
    'logo.png',
    '5a7bee8c-3ac3-4542-b792-5fe780607703',
    '2023-01-04 12:44:22',
    '2023-01-04 12:44:22'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: roles
# ------------------------------------------------------------

INSERT INTO
  `roles` (`id`, `name`, `createdAt`, `updatedAt`)
VALUES
  (
    '1a2832f9-ceb7-4ff9-930a-af176c88dcc5',
    'ortu',
    '2023-01-04 12:44:22',
    '2023-01-04 12:44:22'
  );
INSERT INTO
  `roles` (`id`, `name`, `createdAt`, `updatedAt`)
VALUES
  (
    '1b864518-299d-469c-b270-4d4b9d5b120f',
    'donatur',
    '2023-01-04 12:44:22',
    '2023-01-04 12:44:22'
  );
INSERT INTO
  `roles` (`id`, `name`, `createdAt`, `updatedAt`)
VALUES
  (
    '8b273d68-fe09-422d-a660-af3d8312f883',
    'Master Admin',
    '2023-01-04 12:44:22',
    '2023-01-04 12:44:22'
  );
INSERT INTO
  `roles` (`id`, `name`, `createdAt`, `updatedAt`)
VALUES
  (
    '8b273d68-fe09-422d-a660-af3d8312f884',
    'admin',
    '2023-01-04 12:44:22',
    '2023-01-04 12:44:22'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: santris
# ------------------------------------------------------------

INSERT INTO
  `santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `userId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    'Aji Setiaji',
    '20220907',
    '2023-01-04 12:44:23',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '8ce3ed88-34e4-4fb2-baa7-26b6151a43fc',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `userId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    'Yuliana Safiri',
    '20220908',
    '2023-01-04 12:44:23',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '8ce3ed88-34e4-4fb2-baa7-26b6151a43fc',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `userId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b1',
    'Muhammad Panji Kurniawan',
    '20220909',
    '2023-01-04 12:44:23',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '1c7258f8-0ac0-4c36-aba2-94ba3f4f3042',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `userId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b2',
    'Marniati',
    '20220910',
    '2023-01-04 12:44:23',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '1c7258f8-0ac0-4c36-aba2-94ba3f4f3042',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `userId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b3',
    'Mahessa',
    '20220911',
    '2023-01-04 12:44:23',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23',
    '5a7bee8c-3ac3-4542-b792-5fe7806077b4',
    '1c7258f8-0ac0-4c36-aba2-94ba3f4f3042',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `userId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b4',
    'Irfan',
    '20220912',
    '2023-01-04 12:44:23',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23',
    '5a7bee8c-3ac3-4542-b792-5fe7806077b4',
    '1c7258f8-0ac0-4c36-aba2-94ba3f4f3045',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `userId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b5',
    'Fadlan',
    '20220913',
    '2023-01-04 12:44:23',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23',
    '5a7bee8c-3ac3-4542-b792-5fe7806077b4',
    '1c7258f8-0ac0-4c36-aba2-94ba3f4f3045',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `userId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b6',
    'Nizar',
    '20220914',
    '2023-01-04 12:44:23',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23',
    '5a7bee8c-3ac3-4542-b792-5fe7806077b4',
    '1c7258f8-0ac0-4c36-aba2-94ba3f4f3048',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `userId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b7',
    'Ilham',
    '20220915',
    '2023-01-04 12:44:23',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23',
    '5a7bee8c-3ac3-4542-b792-5fe7806077b4',
    '1c7258f8-0ac0-4c36-aba2-94ba3f4f3048',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `userId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b8',
    'Sabil',
    '20220916',
    '2023-01-04 12:44:23',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    NULL,
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `userId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b9',
    'MitaZu',
    '20220917',
    '2023-01-04 12:44:23',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    NULL,
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `userId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c10',
    'Mangga',
    '20220926',
    '2023-01-04 12:44:23',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    NULL,
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `userId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c11',
    'Manggis',
    '20220927',
    '2023-01-04 12:44:23',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    NULL,
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `userId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c12',
    'Anggur',
    '20220928',
    '2023-01-04 12:44:23',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    NULL,
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `userId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c13',
    'Nangka',
    '20220929',
    '2023-01-04 12:44:23',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23',
    'e3028fca-6d4a-4c80-8e09-14d253dac965',
    NULL,
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `userId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c14',
    'Semangka',
    '20220930',
    '2023-01-04 12:44:23',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23',
    'e3028fca-6d4a-4c80-8e09-14d253dac965',
    NULL,
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `userId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c15',
    'Durian',
    '20220931',
    '2023-01-04 12:44:23',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23',
    'e3028fca-6d4a-4c80-8e09-14d253dac965',
    NULL,
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `userId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c16',
    'Merkisa',
    '20220932',
    '2023-01-04 12:44:23',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23',
    'e3028fca-6d4a-4c80-8e09-14d253dac965',
    NULL,
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `userId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c2',
    'Ulfa',
    '20220918',
    '2023-01-04 12:44:23',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    NULL,
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `userId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c3',
    'Nukhi',
    '20220919',
    '2023-01-04 12:44:23',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    NULL,
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `userId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c4',
    'Elfira',
    '20220920',
    '2023-01-04 12:44:23',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    NULL,
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `userId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c5',
    'Kangkung',
    '20220921',
    '2023-01-04 12:44:23',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    NULL,
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `userId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c6',
    'Bayam',
    '20220922',
    '2023-01-04 12:44:23',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    NULL,
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `userId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c7',
    'Singkong',
    '20220923',
    '2023-01-04 12:44:23',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    NULL,
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `userId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c8',
    'Wortel',
    '20220924',
    '2023-01-04 12:44:23',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    NULL,
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `userId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c9',
    'Apel',
    '20220925',
    '2023-01-04 12:44:23',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    NULL,
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: sequelizemeta
# ------------------------------------------------------------

INSERT INTO
  `sequelizemeta` (`name`)
VALUES
  ('20220902092156-create-roles.js');
INSERT INTO
  `sequelizemeta` (`name`)
VALUES
  ('20220902092158-create-masterpondok.js');
INSERT INTO
  `sequelizemeta` (`name`)
VALUES
  ('20220902092159-create-pondok.js');
INSERT INTO
  `sequelizemeta` (`name`)
VALUES
  ('20220903125150-create-users.js');
INSERT INTO
  `sequelizemeta` (`name`)
VALUES
  ('20220904082542-create-santri.js');
INSERT INTO
  `sequelizemeta` (`name`)
VALUES
  ('20220904092536-create-guru.js');
INSERT INTO
  `sequelizemeta` (`name`)
VALUES
  ('20220904093926-create-iqrosantri.js');
INSERT INTO
  `sequelizemeta` (`name`)
VALUES
  ('20220904093927-create-iqroguru.js');
INSERT INTO
  `sequelizemeta` (`name`)
VALUES
  ('20220904094614-create-surahpendekguru.js');
INSERT INTO
  `sequelizemeta` (`name`)
VALUES
  ('20220904094614-create-surahpendeksantri.js');
INSERT INTO
  `sequelizemeta` (`name`)
VALUES
  ('20220904094805-create-alquransantri.js');
INSERT INTO
  `sequelizemeta` (`name`)
VALUES
  ('20220904094806-create-alquranguru.js');
INSERT INTO
  `sequelizemeta` (`name`)
VALUES
  ('20220905155750-create-user-santri.js');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: surahpendekgurus
# ------------------------------------------------------------

INSERT INTO
  `surahpendekgurus` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    1,
    'An Naba’',
    '2023-01-04 12:44:23',
    'selesai',
    '245d57c6-0076-44ea-9876-dd2d3da50465',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendekgurus` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    2,
    'An Nazi’at',
    '2023-01-04 12:44:23',
    'selesai',
    '245d57c6-0076-44ea-9876-dd2d3da50465',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendekgurus` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    3,
    'Al Lahab',
    '2023-01-04 12:44:23',
    'selesai',
    '245d57c6-0076-44ea-9876-dd2d3da50465',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendekgurus` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    4,
    'Al Kautsar',
    '2023-01-04 12:44:23',
    'selesai',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendekgurus` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    5,
    'Al Ikhlash',
    '2023-01-04 12:44:23',
    'selesai',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendekgurus` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    6,
    'An Nazi’at',
    '2023-01-04 12:44:23',
    'selesai',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: surahpendeksantris
# ------------------------------------------------------------

INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    1,
    'An Naba’',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    2,
    'An Nazi’at',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    3,
    'Al Lahab',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    4,
    'Al Kautsar',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    5,
    'Al Ikhlash',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    6,
    'An Nazi’at',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    7,
    'Al Kautsar',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b1',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    8,
    'Al Ikhlash',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b1',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    9,
    'An Nazi’at',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b1',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    10,
    'Al Kautsar',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b3',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    11,
    'Al Ikhlash',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b3',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    12,
    'An Nazi’at',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b3',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    13,
    'Al Kautsar',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b4',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    14,
    'Al Ikhlash',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b4',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    15,
    'An Nazi’at',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b4',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    16,
    'Al Kautsar',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c3',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    17,
    'Al Ikhlash',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c3',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    18,
    'An Nazi’at',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c3',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    19,
    'Al Kautsar',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c4',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    20,
    'Al Ikhlash',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c4',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    21,
    'An Nazi’at',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c4',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    22,
    'Al Kautsar',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c5',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    23,
    'Al Ikhlash',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c5',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    24,
    'An Nazi’at',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c6',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    25,
    'Al Kautsar',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c6',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    26,
    'Al Ikhlash',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c6',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    27,
    'An Nazi’at',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c6',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    28,
    'Al Kautsar',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c11',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    29,
    'Al Ikhlash',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c11',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    30,
    'An Nazi’at',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c11',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    31,
    'Al Kautsar',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c12',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    32,
    'Al Ikhlash',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c12',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    33,
    'An Nazi’at',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c12',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    34,
    'Al Kautsar',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c13',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    35,
    'Al Ikhlash',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c13',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    36,
    'An Nazi’at',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c13',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    37,
    'Al Kautsar',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c14',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    38,
    'Al Ikhlash',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c14',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    39,
    'An Nazi’at',
    '2023-01-04 12:44:23',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c14',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: users
# ------------------------------------------------------------

INSERT INTO
  `users` (
    `id`,
    `name`,
    `password`,
    `email`,
    `address`,
    `age`,
    `datebirth`,
    `gender`,
    `telephone`,
    `photo`,
    `refresh_token`,
    `roleId`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '1c7258f8-0ac0-4c36-aba2-94ba3f4f3039',
    'Master Admin',
    '$2b$10$rbdLX7CfZ8axV6KuNww.I..20De5sIekrVxGoprRUVzmCyUAzRii2',
    'masteradmin@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '2023-01-04 12:44:22',
    NULL,
    '082177751041',
    'adminprofile.png',
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIxYzcyNThmOC0wYWMwLTRjMzYtYWJhMi05NGJhM2Y0ZjMwMzkiLCJuYW1lIjoiTWFzdGVyIEFkbWluIiwiZW1haWwiOiJtYXN0ZXJhZG1pbkBnbWFpbC5jb20iLCJyb2xlIjoiOGIyNzNkNjgtZmUwOS00MjJkLWE2NjAtYWYzZDgzMTJmODgzIiwicGhvdG8iOiJhZG1pbnByb2ZpbGUucG5nIiwibG9nb3RhaGZpZHoiOiIiLCJyb2xlTmFtZSI6Ik1hc3RlciBBZG1pbiIsImlhdCI6MTY3MjgzNjM5NiwiZXhwIjoxNzA0MzcyMzk2fQ.mZHWDb0rUBkIMhp1n0yL2tfve9lnuE0WRsbY6n7wla4',
    '8b273d68-fe09-422d-a660-af3d8312f883',
    '96f95aea-ef38-4623-82af-979c383bbb35',
    '2023-01-04 12:44:22',
    '2023-01-04 12:46:36'
  );
INSERT INTO
  `users` (
    `id`,
    `name`,
    `password`,
    `email`,
    `address`,
    `age`,
    `datebirth`,
    `gender`,
    `telephone`,
    `photo`,
    `refresh_token`,
    `roleId`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '1c7258f8-0ac0-4c36-aba2-94ba3f4f3040',
    'Admin',
    '$2b$10$vqAiaU3WO9AMaOeFyuQR9.G.esv7lYpyjFT5O2qBiRjvgXFxNv6C6',
    'admin@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '2023-01-04 12:44:22',
    NULL,
    '082177751041',
    'adminprofile.png',
    NULL,
    '8b273d68-fe09-422d-a660-af3d8312f884',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '2023-01-04 12:44:22',
    '2023-01-04 12:44:22'
  );
INSERT INTO
  `users` (
    `id`,
    `name`,
    `password`,
    `email`,
    `address`,
    `age`,
    `datebirth`,
    `gender`,
    `telephone`,
    `photo`,
    `refresh_token`,
    `roleId`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '1c7258f8-0ac0-4c36-aba2-94ba3f4f3041',
    'Admin2',
    '$2b$10$Bc1y9WM7H3ORAfk9OVODeeIDd3wOt71iJoE3CKdJfeGof0gvg0L2O',
    'admin2@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '2023-01-04 12:44:23',
    NULL,
    '082177751041',
    'adminprofile.png',
    NULL,
    '8b273d68-fe09-422d-a660-af3d8312f884',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `users` (
    `id`,
    `name`,
    `password`,
    `email`,
    `address`,
    `age`,
    `datebirth`,
    `gender`,
    `telephone`,
    `photo`,
    `refresh_token`,
    `roleId`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '1c7258f8-0ac0-4c36-aba2-94ba3f4f3042',
    'Orang Tua2',
    '$2b$10$qkrDRfS5IeMuBxvVcyd92uYtlbn857I7.Eypd8egRgF0/9jk14vtG',
    'ortu2@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '2023-01-04 12:44:23',
    NULL,
    '082177751041',
    'adminprofile.png',
    NULL,
    '1a2832f9-ceb7-4ff9-930a-af176c88dcc5',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `users` (
    `id`,
    `name`,
    `password`,
    `email`,
    `address`,
    `age`,
    `datebirth`,
    `gender`,
    `telephone`,
    `photo`,
    `refresh_token`,
    `roleId`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '1c7258f8-0ac0-4c36-aba2-94ba3f4f3043',
    'Donatur2',
    '$2b$10$StqhX14LgdO8TpbAJj085..p9lIAfl20SH0tICKCWLPDvD2VI9Vsi',
    'donatur2@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '2023-01-04 12:44:23',
    NULL,
    '082177751041',
    'adminprofile.png',
    NULL,
    '1b864518-299d-469c-b270-4d4b9d5b120f',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `users` (
    `id`,
    `name`,
    `password`,
    `email`,
    `address`,
    `age`,
    `datebirth`,
    `gender`,
    `telephone`,
    `photo`,
    `refresh_token`,
    `roleId`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '1c7258f8-0ac0-4c36-aba2-94ba3f4f3044',
    'Adminhikmah1',
    '$2b$10$a2RtUL.NxmKhq8QH55BkpOT5w9J3kCyUGJDDZNRQzexOep.1R7ZUW',
    'adminhikmah1@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '2023-01-04 12:44:23',
    NULL,
    '082177751041',
    'adminprofile.png',
    NULL,
    '8b273d68-fe09-422d-a660-af3d8312f884',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `users` (
    `id`,
    `name`,
    `password`,
    `email`,
    `address`,
    `age`,
    `datebirth`,
    `gender`,
    `telephone`,
    `photo`,
    `refresh_token`,
    `roleId`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '1c7258f8-0ac0-4c36-aba2-94ba3f4f3045',
    'Orang Tua Hikmah1',
    '$2b$10$xYA16mPvmzYd.R521xhKUeyEoUNfsDZ.37NEtciyKEU7yoFq.Jyym',
    'ortuhikmah1@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '2023-01-04 12:44:23',
    NULL,
    '082177751041',
    'adminprofile.png',
    NULL,
    '1a2832f9-ceb7-4ff9-930a-af176c88dcc5',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `users` (
    `id`,
    `name`,
    `password`,
    `email`,
    `address`,
    `age`,
    `datebirth`,
    `gender`,
    `telephone`,
    `photo`,
    `refresh_token`,
    `roleId`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '1c7258f8-0ac0-4c36-aba2-94ba3f4f3046',
    'Donatur hikmah 1',
    '$2b$10$Z5oSTfGeZxQxjrBS26Ffk.ijW7hOAE5/FAM3QxJ3z70dzGzCfQrVa',
    'donaturhikmah1@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '2023-01-04 12:44:23',
    NULL,
    '082177751041',
    'adminprofile.png',
    NULL,
    '1b864518-299d-469c-b270-4d4b9d5b120f',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `users` (
    `id`,
    `name`,
    `password`,
    `email`,
    `address`,
    `age`,
    `datebirth`,
    `gender`,
    `telephone`,
    `photo`,
    `refresh_token`,
    `roleId`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '1c7258f8-0ac0-4c36-aba2-94ba3f4f3047',
    'Adminhikmah2',
    '$2b$10$vbp/dwKKPTrcfsE2UrCSHOW5Cr9lhn0GmG9kwd8ZDlgfCuZLRlHDy',
    'adminhikmah2@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '2023-01-04 12:44:23',
    NULL,
    '082177751041',
    'adminprofile.png',
    NULL,
    '8b273d68-fe09-422d-a660-af3d8312f884',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `users` (
    `id`,
    `name`,
    `password`,
    `email`,
    `address`,
    `age`,
    `datebirth`,
    `gender`,
    `telephone`,
    `photo`,
    `refresh_token`,
    `roleId`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '1c7258f8-0ac0-4c36-aba2-94ba3f4f3048',
    'Orang Tua Hikmah2',
    '$2b$10$1CaNye6Y3CdvC964o6bWEO/grr9s0C6PsSK.gJSmCaAP0YWHoa.Bi',
    'ortuhikmah2@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '2023-01-04 12:44:23',
    NULL,
    '082177751041',
    'adminprofile.png',
    NULL,
    '1a2832f9-ceb7-4ff9-930a-af176c88dcc5',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `users` (
    `id`,
    `name`,
    `password`,
    `email`,
    `address`,
    `age`,
    `datebirth`,
    `gender`,
    `telephone`,
    `photo`,
    `refresh_token`,
    `roleId`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '1c7258f8-0ac0-4c36-aba2-94ba3f4f3049',
    'Donatur hikmah 2',
    '$2b$10$LrMzkFf52BhoMnXPRElTX./PinxR7s8rLPlUqkz2UK7fYaQArx9ne',
    'donaturhikmah2@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '2023-01-04 12:44:23',
    NULL,
    '082177751041',
    'adminprofile.png',
    NULL,
    '1b864518-299d-469c-b270-4d4b9d5b120f',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `users` (
    `id`,
    `name`,
    `password`,
    `email`,
    `address`,
    `age`,
    `datebirth`,
    `gender`,
    `telephone`,
    `photo`,
    `refresh_token`,
    `roleId`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '7a8fd74d-3fe0-4b7b-8d77-1e8266983ade',
    'Donatur',
    '$2b$10$O5.CmRKfSjORcXSEAlIjBuerLdlc51sXjxZRlkh0F9i4C0/SCCtUu',
    'donatur@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '2023-01-04 12:44:23',
    NULL,
    '082177751041',
    'adminprofile.png',
    NULL,
    '1b864518-299d-469c-b270-4d4b9d5b120f',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '2023-01-04 12:44:23',
    '2023-01-04 12:44:23'
  );
INSERT INTO
  `users` (
    `id`,
    `name`,
    `password`,
    `email`,
    `address`,
    `age`,
    `datebirth`,
    `gender`,
    `telephone`,
    `photo`,
    `refresh_token`,
    `roleId`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '8ce3ed88-34e4-4fb2-baa7-26b6151a43fc',
    'Orang Tua',
    '$2b$10$160LfOFCtst4f8VTuPWyhuWM8uf0YYsEnYKpNKC5dInB3AwnFN4pW',
    'ortu@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '2023-01-04 12:44:22',
    NULL,
    '082177751041',
    'adminprofile.png',
    NULL,
    '1a2832f9-ceb7-4ff9-930a-af176c88dcc5',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '2023-01-04 12:44:22',
    '2023-01-04 12:44:22'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: usersantris
# ------------------------------------------------------------


/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
