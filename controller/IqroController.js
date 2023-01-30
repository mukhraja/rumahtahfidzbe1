const { Iqrosantri, sequelize, Pondok } = require("../models");
const uuid = require("uuid");
const { QueryTypes, json } = require("sequelize");

class IqroController {
  static async getIqros(req, res) {
    const { id } = req.params;
    const data = await Iqrosantri.findAll({
      where: { santriId: id },
      order: [["id", "DESC"]],
      include: [{ all: true }],
    });
    res.status(200).json({ data });
  }
  catch(error) {
    return res.status(404).json({ data: error.message });
  }

  static async listIqroAwal(req, res) {
    try {
      const data = await sequelize.query(
        "SELECT Santris.name as namasantri,Pondoks.id AS pondokId, Pondoks.name AS pondokName,Santris.mulai_vakum, test.* FROM (SELECT * FROM Iqrosantris ORDER BY Iqrosantris.id DESC LIMIT 18446744073709551615)AS test JOIN Santris ON Santris.id=test.santriId JOIN Pondoks ON Pondoks.id=Santris.pondokId GROUP BY santriId;",
        {
          model: Iqrosantri,
          type: QueryTypes.SELECT,
          mapToModel: true,
          nest: true,
          raw: true,
        }
      );
      res.status(200).json({ data });
    } catch (error) {
      return res.status(404).json({ data: "no data found" });
    }
  }

  static async listIqroAwalRumahTahfidz(req, res) {
    try {
      const { pondokId } = req.params;
      const data = await sequelize.query(
        `SELECT Santris.name as namasantri,Santris.mulai_vakum, Pondoks.id AS pondokId, Pondoks.name AS pondokName, test.* FROM (SELECT * FROM Iqrosantris ORDER BY Iqrosantris.id DESC LIMIT 18446744073709551615)AS test JOIN Santris ON Santris.id=test.santriId JOIN Pondoks ON Pondoks.id=Santris.pondokId WHERE Pondoks.id = '${pondokId}' GROUP BY santriId;`,
        {
          model: Iqrosantri,
          type: QueryTypes.SELECT,
          mapToModel: true,
          nest: true,
          raw: true,
        }
      );
      res.status(200).json({ data });
    } catch (error) {
      return res.status(404).json({ data: "no data found" });
    }
  }

  static async listIqroAwalRumahTahfidzByUserId(req, res) {
    try {
      const { userId } = req.params;
      const data = await sequelize.query(
        `SELECT Santris.name as namasantri,Santris.mulai_vakum, Pondoks.id AS pondokId, Pondoks.name AS pondokName, test.* FROM (SELECT * FROM Iqrosantris ORDER BY Iqrosantris.id DESC LIMIT 18446744073709551615)AS test JOIN Santris ON Santris.id=test.santriId JOIN Pondoks ON Pondoks.id=Santris.pondokId JOIN Users on Users.id = Santris.userId where Users.id = "${userId}" GROUP BY santriId;`,
        {
          model: Iqrosantri,
          type: QueryTypes.SELECT,
          mapToModel: true,
          nest: true,
          raw: true,
        }
      );
      res.status(200).json({ data });
    } catch (error) {
      return res.status(404).json({ data: "no data found" });
    }
  }

  static async listIqroAwalByMasterTahfidz(req, res) {
    try {
      const { masterpondokId } = req.params;
      const data = await sequelize.query(
        `SELECT Santris.name as namasantri,Santris.mulai_vakum, Pondoks.id AS pondokId, Pondoks.name AS pondokName, test.* FROM (SELECT * FROM Iqrosantris ORDER BY Iqrosantris.id DESC LIMIT 18446744073709551615)AS test JOIN Santris ON Santris.id=test.santriId JOIN Pondoks ON Pondoks.id=Santris.pondokId WHERE Pondoks.masterpondokId = '${masterpondokId}' GROUP BY santriId;`,
        {
          model: Iqrosantri,
          type: QueryTypes.SELECT,
          mapToModel: true,
          nest: true,
          raw: true,
        }
      );
      res.status(200).json({ data });
    } catch (error) {
      return res.status(404).json({ data: "no data found" });
    }
  }

  static async getIqro(req, res) {
    try {
      const { id } = req.params;
      const data = await Iqrosantri.findOne({
        where: { id },
        include: [{ all: true, include: { model: Pondok } }],
      });
      res.status(200).json({ data });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async createIqros(req, res) {
    try {
      const { name, halaman, tgl_selesai, ket, santriId } = req.body;

      const payload = {
        name,
        halaman,
        tgl_selesai,
        santriId,
        ket,
      };

      const newData = await Iqrosantri.create(payload);
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async updateIqros(req, res) {
    try {
      const { name, halaman, tgl_selesai, ket } = req.body;

      const payload = {
        name,
        halaman,
        tgl_selesai,
        ket,
      };

      const newData = await Iqrosantri.update(payload, {
        returning: true,
        where: { id: req.params.id },
      });
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: "Pastikan Semua data benar" });
    }
  }

  static async deleteIqros(req, res) {
    try {
      const deleteData = await Iqrosantri.destroy({
        where: { id: req.params.id },
      });
      res.status(200).json("delete data" + deleteData + "successfully");
    } catch (error) {
      return res.status(404).json({ data: "pastikan id data benar" });
    }
  }
}

module.exports = IqroController;
