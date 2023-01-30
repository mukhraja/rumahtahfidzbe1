const { Alquransantri, Pondok, sequelize } = require("../models");
const uuid = require("uuid");
const { QueryTypes } = require("sequelize");

class AlquranController {
  static async listAlquranAwal(req, res) {
    try {
      const data = await sequelize.query(
        "SELECT Santris.name as namasantri,Santris.mulai_vakum, test.*, Pondoks.name as namapondok FROM (SELECT * FROM Alquransantris ORDER BY Alquransantris.id DESC LIMIT 18446744073709551615)AS test JOIN Santris ON Santris.id=test.santriId JOIN Pondoks ON Pondoks.id=Santris.pondokId GROUP BY santriId",
        {
          model: Alquransantri,
          type: QueryTypes.SELECT,
          mapToModel: true,
          nest: true,
          raw: true,
        }
      );
      res.status(200).json({ data });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async listAlquranAwalRumahTahfidz(req, res) {
    try {
      const { pondokId } = req.params;
      const data = await sequelize.query(
        `SELECT Santris.name as namasantri,Santris.mulai_vakum, Pondoks.id AS pondokId, Pondoks.name AS pondokName, test.*, Pondoks.name as namapondok, Pondoks.id as pondokId FROM (SELECT * FROM Alquransantris ORDER BY Alquransantris.id DESC LIMIT 18446744073709551615)AS test JOIN Santris ON Santris.id=test.santriId JOIN Pondoks ON Pondoks.id=Santris.pondokId WHERE Pondoks.id = '${pondokId}' GROUP BY santriId`,
        {
          model: Alquransantri,
          type: QueryTypes.SELECT,
          mapToModel: true,
          nest: true,
          raw: true,
        }
      );
      res.status(200).json({ data });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async listAlquranAwalByMasterTahfidz(req, res) {
    try {
      const { masterpondokId } = req.params;
      const data = await sequelize.query(
        `SELECT Santris.name as namasantri,Santris.mulai_vakum, Pondoks.id AS pondokId, Pondoks.name AS pondokName, test.*, Pondoks.name as namapondok, Pondoks.id as pondokId FROM (SELECT * FROM Alquransantris ORDER BY Alquransantris.id DESC LIMIT 18446744073709551615)AS test JOIN Santris ON Santris.id=test.santriId JOIN Pondoks ON Pondoks.id=Santris.pondokId WHERE Pondoks.masterpondokId = '${masterpondokId}' GROUP BY santriId`,
        {
          model: Alquransantri,
          type: QueryTypes.SELECT,
          mapToModel: true,
          nest: true,
          raw: true,
        }
      );
      res.status(200).json({ data });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async listAlquranAwalByUserId(req, res) {
    try {
      const { userId } = req.params;
      const data = await sequelize.query(
        `SELECT Santris.name as namasantri, Pondoks.id AS pondokId, Pondoks.name AS pondokName, test.*, Pondoks.name as namapondok, Pondoks.id as pondokId FROM (SELECT * FROM Alquransantris ORDER BY Alquransantris.id DESC LIMIT 18446744073709551615)AS test JOIN Santris ON Santris.id=test.santriId JOIN Pondoks ON Pondoks.id=Santris.pondokId JOIN Users on Users.id = Santris.userId where Users.id = "${userId}" GROUP BY santriId`,
        {
          model: Alquransantri,
          type: QueryTypes.SELECT,
          mapToModel: true,
          nest: true,
          raw: true,
        }
      );
      res.status(200).json({ data });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async getAlqurans(req, res) {
    try {
      const { id } = req.params;
      const data = await Alquransantri.findAll({
        where: { santriId: id },
        order: [["id", "DESC"]],
        include: [{ all: true }],
      });
      res.status(200).json({ data });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async getAlquran(req, res) {
    try {
      const { id } = req.params;
      const data = await Alquransantri.findOne({
        where: { id },
        include: [{ all: true, include: { model: Pondok } }],
      });
      res.status(200).json({ data });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async createAlquran(req, res) {
    try {
      const { juz, surah, ayat, tgl_selesai, ket, santriId, halaman } =
        req.body;

      const payload = {
        juz,
        surah,
        ayat,
        halaman,
        tgl_selesai,
        ket,
        santriId,
      };

      const newData = await Alquransantri.create(payload);
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: "Pastikan Semua data terisi" });
    }
  }

  static async updateAlquran(req, res) {
    try {
      const { juz, surah, ayat, tgl_selesai, ket, santriId, halaman } =
        req.body;

      const payload = {
        juz,
        surah,
        ayat,
        halaman,
        tgl_selesai,
        ket,
        santriId,
      };

      const newData = await Alquransantri.update(payload, {
        returning: true,
        where: { id: req.params.id },
      });
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: "Pastikan Semua data benar" });
    }
  }

  static async deleteAlquran(req, res) {
    try {
      const deleteData = await Alquransantri.destroy({
        where: { id: req.params.id },
      });
      res.status(200).json("delete data" + deleteData + "successfully");
    } catch (error) {
      return res.status(404).json({ data: "pastikan id data benar" });
    }
  }
}

module.exports = AlquranController;
