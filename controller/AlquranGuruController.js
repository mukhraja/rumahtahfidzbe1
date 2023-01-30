const { Alquranguru, Pondok, sequelize } = require("../models");
const uuid = require("uuid");
const { QueryTypes } = require("sequelize");

class AlquranController {
  static async listAlquranAwal(req, res) {
    try {
      const data = await sequelize.query(
        "SELECT Gurus.name as namaguru, test.*, Pondoks.name as namapondok FROM (SELECT * FROM Alqurangurus ORDER BY Alqurangurus.id DESC LIMIT 18446744073709551615)AS test JOIN Gurus ON Gurus.id=test.guruId JOIN Pondoks ON Pondoks.id=Gurus.pondokId GROUP BY guruId",
        {
          model: Alquranguru,
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
        `SELECT Gurus.name as namaguru, test.*, Pondoks.name as namapondok, Pondoks.id as pondokId FROM (SELECT * FROM Alqurangurus ORDER BY Alqurangurus.id DESC LIMIT 18446744073709551615)AS test JOIN Gurus ON Gurus.id=test.guruId JOIN Pondoks ON Pondoks.id=Gurus.pondokId WHERE Pondoks.id = '${pondokId}' GROUP BY guruId`,
        {
          model: Alquranguru,
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

  static async listAlquranAwalMasterTahfidz(req, res) {
    try {
      const { masterpondokId } = req.params;
      const data = await sequelize.query(
        `SELECT Gurus.name as namaguru, test.*, Pondoks.name as namapondok, Pondoks.id as pondokId FROM (SELECT * FROM Alqurangurus ORDER BY Alqurangurus.id DESC LIMIT 18446744073709551615)AS test JOIN Gurus ON Gurus.id=test.guruId JOIN Pondoks ON Pondoks.id=Gurus.pondokId WHERE Pondoks.masterpondokId = '${masterpondokId}' GROUP BY guruId`,
        {
          model: Alquranguru,
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
      const data = await Alquranguru.findAll({
        where: { guruId: id },
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
      const data = await Alquranguru.findOne({
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
      const { juz, surah, ayat, tgl_selesai, ket, guruId, halaman } = req.body;

      const payload = {
        juz,
        surah,
        ayat,
        halaman,
        tgl_selesai,
        ket,
        guruId,
      };

      const newData = await Alquranguru.create(payload);
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: "Pastikan Semua data terisi" });
    }
  }

  static async updateAlquran(req, res) {
    try {
      const { juz, surah, ayat, tgl_selesai, ket, guruId, halaman } = req.body;

      const payload = {
        juz,
        surah,
        ayat,
        halaman,
        tgl_selesai,
        ket,
        guruId,
      };

      const newData = await Alquranguru.update(payload, {
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
      const deleteData = await Alquranguru.destroy({
        where: { id: req.params.id },
      });
      res.status(200).json("delete data" + deleteData + "successfully");
    } catch (error) {
      return res.status(404).json({ data: "pastikan id data benar" });
    }
  }
}

module.exports = AlquranController;
