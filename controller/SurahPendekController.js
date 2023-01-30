const { Surahpendeksantri, Pondok, sequelize } = require("../models");
const uuid = require("uuid");
const { QueryTypes } = require("sequelize");

class SurahPendekController {
  static async getSurahPendeks(req, res) {
    try {
      const { id } = req.params;
      const data = await Surahpendeksantri.findAll({
        where: { santriId: id },
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
        "SELECT Santris.name as namasantri,Santris.mulai_vakum, test.*, Pondoks.name as namapondok, Pondoks.id as pondokId  FROM (SELECT * FROM Surahpendeksantris ORDER BY Surahpendeksantris.id DESC LIMIT 18446744073709551615)AS test JOIN Santris ON Santris.id=test.santriId JOIN Pondoks ON Pondoks.id=Santris.pondokId GROUP BY santriId",
        {
          model: Surahpendeksantri,
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
  static async listSurahPendekAwalRumahTahfidz(req, res) {
    try {
      const { pondokId } = req.params;
      const data = await sequelize.query(
        `SELECT Santris.name as namasantri,Santris.mulai_vakum, test.*, Pondoks.name as namapondok, Pondoks.id as pondokId FROM (SELECT * FROM Surahpendeksantris ORDER BY Surahpendeksantris.id DESC LIMIT 18446744073709551615)AS test JOIN Santris ON Santris.id=test.santriId JOIN Pondoks ON Pondoks.id=Santris.pondokId WHERE Pondoks.id = '${pondokId}'  GROUP BY santriId`,
        {
          model: Surahpendeksantri,
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
        `SELECT Santris.name as namasantri,Santris.mulai_vakum, test.*, Pondoks.name as namapondok, Pondoks.id as pondokId FROM (SELECT * FROM Surahpendeksantris ORDER BY Surahpendeksantris.id DESC LIMIT 18446744073709551615)AS test JOIN Santris ON Santris.id=test.santriId JOIN Pondoks ON Pondoks.id=Santris.pondokId WHERE Pondoks.masterpondokId = '${masterpondokId}' GROUP BY santriId;`,
        {
          model: Surahpendeksantri,
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

  static async listSurahPendekAwalByUserId(req, res) {
    try {
      const { userId } = req.params;
      const data = await sequelize.query(
        `SELECT Santris.name as namasantri,Santris.mulai_vakum, test.*, Pondoks.name as namapondok, Pondoks.id as pondokId FROM (SELECT * FROM Surahpendeksantris ORDER BY Surahpendeksantris.id DESC LIMIT 18446744073709551615)AS test JOIN Santris ON Santris.id=test.santriId JOIN Pondoks ON Pondoks.id=Santris.pondokId JOIN Users on Users.id = Santris.userId where Users.id = "${userId}" GROUP BY santriId;`,
        {
          model: Surahpendeksantri,
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
      const data = await Surahpendeksantri.findOne({
        where: { id },
        include: [{ all: true, include: { model: Pondok } }],
      });
      res.status(200).json({ data });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  // static async getSurahPendekByRumahTahfidz(req, res) {
  //   try {
  //     const { pondokId } = req.params;
  //     const data = await Surahpendeksantri.findAll({
  //       where: { '$Santri.PondokId$' : pondokId },
  //       include: [{ all: true, include: { model: Pondok } }],
  //     });
  //     res.status(200).json({ data });
  //   } catch (error) {
  //     return res.status(404).json({ data: error.message });
  //   }
  // }

  static async createSurahPendek(req, res) {
    try {
      const { name, tgl_selesai, santriId, ket } = req.body;

      const payload = {
        name,
        tgl_selesai,
        santriId,
        ket,
      };

      const newData = await Surahpendeksantri.create(payload);
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async updateSurahpendek(req, res) {
    try {
      const { name, tgl_selesai, ket, santriId } = req.body;

      const payload = {
        name,
        tgl_selesai,
        ket,
        santriId,
      };

      const newData = await Surahpendeksantri.update(payload, {
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
      const deleteData = await Surahpendeksantri.destroy({
        where: { id: req.params.id },
      });
      res.status(200).json("delete data" + deleteData + "successfully");
    } catch (error) {
      return res.status(404).json({ data: "pastikan id data benar" });
    }
  }
}

module.exports = SurahPendekController;
