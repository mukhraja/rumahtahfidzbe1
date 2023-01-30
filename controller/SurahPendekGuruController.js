const { Surahpendekguru, Pondok, sequelize } = require("../models");
const uuid = require("uuid");
const { QueryTypes } = require("sequelize");

class SurahPendekGuruController {
  static async getSurahPendeks(req, res) {
    try {
      const { id } = req.params;
      const data = await Surahpendekguru.findAll({
        where: { guruId: id },
        order: [["id", "DESC"]],
        include: [{ all: true }],
      });
      res.status(200).json({ data });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async listSurahPendekAwal(req, res) {
    try {
      const data = await sequelize.query(
        "SELECT Gurus.name as namaguru, test.*, Pondoks.name as namapondok, Pondoks.id as pondokId FROM (SELECT * FROM Surahpendekgurus ORDER BY Surahpendekgurus.id DESC LIMIT 18446744073709551615)AS test JOIN Gurus ON Gurus.id=test.guruId JOIN Pondoks ON Pondoks.id=Gurus.pondokId GROUP BY guruId",
        {
          model: Surahpendekguru,
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

  static async getSurahPendek(req, res) {
    try {
      const { id } = req.params;
      const data = await Surahpendekguru.findOne({
        where: { id },
        include: [{ all: true, include: { model: Pondok } }],
      });
      res.status(200).json({ data });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async listSurahPendekAwalRumahTahfidz(req, res) {
    try {
      const { pondokId } = req.params;
      const data = await sequelize.query(
        `SELECT Gurus.name as namaguru, test.*, Pondoks.name as namapondok, Pondoks.id as pondokId FROM (SELECT * FROM Surahpendekgurus ORDER BY Surahpendekgurus.id DESC LIMIT 18446744073709551615)AS test JOIN Gurus ON Gurus.id=test.guruId JOIN Pondoks ON Pondoks.id=Gurus.pondokId WHERE Pondoks.id = '${pondokId}' GROUP BY guruId`,
        {
          model: Surahpendekguru,
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

  static async listSurahPendekAwalByMasterTahfidz(req, res) {
    try {
      const { masterpondokId } = req.params;
      const data = await sequelize.query(
        `SELECT Gurus.name as namaguru, test.*, Pondoks.name as namapondok, Pondoks.id as pondokId FROM (SELECT * FROM Surahpendekgurus ORDER BY Surahpendekgurus.id DESC LIMIT 18446744073709551615)AS test JOIN Gurus ON Gurus.id=test.guruId JOIN Pondoks ON Pondoks.id=Gurus.pondokId WHERE Pondoks.masterpondokId = '${masterpondokId}' GROUP BY guruId`,
        {
          model: Surahpendekguru,
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

  static async createSurahPendek(req, res) {
    try {
      const { name, tgl_selesai, guruId, ket } = req.body;

      const payload = {
        name,
        tgl_selesai,
        guruId,
        ket,
      };

      const newData = await Surahpendekguru.create(payload);
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async updateSurahpendek(req, res) {
    try {
      const { name, tgl_selesai, ket, guruId } = req.body;

      const payload = {
        name,
        ket,
        tgl_selesai,
        guruId,
      };

      const newData = await Surahpendekguru.update(payload, {
        returning: true,
        where: { id: req.params.id },
      });
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: "Pastikan Semua data benar" });
    }
  }

  static async deleteSurahpendek(req, res) {
    try {
      const deleteData = await Surahpendekguru.destroy({
        where: { id: req.params.id },
      });
      res.status(200).json("delete data" + deleteData + "successfully");
    } catch (error) {
      return res.status(404).json({ data: "pastikan id data benar" });
    }
  }
}

module.exports = SurahPendekGuruController;
