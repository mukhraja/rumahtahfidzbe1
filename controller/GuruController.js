const { Guru } = require("../models");
const uuid = require("uuid");

class GuruController {
  static async getGurus(req, res) {
    try {
      const data = await Guru.findAll({
        include: [
          {
            all: true,
          },
        ],
      });
      res.status(200).json({ data });
    } catch (error) {
      console.log(error);
      return res.status(404).json({ data: [] });
    }
  }

  static async getguruid(req, res) {
    try {
      const { id } = req.params;

      const newData = await Guru.findOne({
        where: { id },
        include: [{ all: true }],
      });

      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(400).json({ data: [] });
    }
  }

  static async getgurubyrumahtahfidz(req, res) {
    try {
      const { pondokId } = req.params;

      const newData = await Guru.findAll({
        where: { pondokId },
        include: [{ all: true }],
      });

      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(400).json({ data: [] });
    }
  }

  static async getgurubymastertahfidz(req, res) {
    try {
      const { mastertahfidzId } = req.params;

      const newData = await Guru.findAll({
        where: { "$Pondok.masterpondokId$": mastertahfidzId },
        include: [{ all: true }],
      });

      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(400).json({ data: [] });
    }
  }

  static async createGuru(req, res) {
    try {
      const { files, fields } = req.fileAttrb;

      if (fields[10].value.length > 1) {
        const payload = {
          id: uuid.v4(),
          name: fields[0].value,
          niu: fields[1].value,
          tempat: fields[2].value,
          datebirth: fields[3].value,
          gender: fields[4].value,
          telephone: fields[5].value,
          address: fields[6].value,
          ayah: fields[7].value,
          ibu: fields[8].value,
          mulai_masuk: fields[9].value,
          mulai_vakum: fields[10].value,
          pondokId: fields[11].value,
          photo: files[0].file.newFilename,
        };
        console.log(payload);

        const newData = await Guru.create(payload);
        res.status(200).json({ data: newData });
      } else {
        const payload = {
          id: uuid.v4(),
          name: fields[0].value,
          niu: fields[1].value,
          tempat: fields[2].value,
          datebirth: fields[3].value,
          gender: fields[4].value,
          telephone: fields[5].value,
          address: fields[6].value,
          ayah: fields[7].value,
          ibu: fields[8].value,
          mulai_masuk: fields[9].value,
          pondokId: fields[11].value,
          photo: files[0].file.newFilename,
        };
        console.log(payload);

        const newData = await Guru.create(payload);
        res.status(200).json({ data: newData });
      }
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async updateGuru(req, res) {
    try {
      const { files, fields } = req.fileAttrb;

      if (fields[10].value == "Invalid date") {
        const payload = {
          name: fields[0].value,
          niu: fields[1].value,
          tempat: fields[2].value,
          datebirth: fields[3].value,
          gender: fields[4].value,
          telephone: fields[5].value,
          address: fields[6].value,
          ayah: fields[7].value,
          ibu: fields[8].value,
          mulai_masuk: fields[9].value,
          mulai_vakum: null,
          pondokId: fields[11].value,
          photo: files[0].file.newFilename,
        };

        console.log(payload);

        const newData = await Guru.update(payload, {
          returning: true,
          where: { id: req.params.id },
        });
        res.status(200).json({ data: newData });
      } else {
        const payload = {
          name: fields[0].value,
          niu: fields[1].value,
          tempat: fields[2].value,
          datebirth: fields[3].value,
          gender: fields[4].value,
          telephone: fields[5].value,
          address: fields[6].value,
          ayah: fields[7].value,
          ibu: fields[8].value,
          mulai_masuk: fields[9].value,
          mulai_vakum: fields[10].value,
          pondokId: fields[11].value,
          photo: files[0].file.newFilename,
        };
        console.log(payload);

        const newData = await Guru.update(payload, {
          returning: true,
          where: { id: req.params.id },
        });
        res.status(200).json({ data: newData });
      }
    } catch (error) {
      return res.status(404).json({ data: "Pastikan Semua data benar" });
    }
  }

  static async updateNoFileGuru(req, res) {
    console.log("sampai disini");
    try {
      const {
        name,
        niu,
        tempat,
        telephone,
        address,
        datebirth,
        gender,
        ayah,
        ibu,
        mulai_masuk,
        mulai_vakum,
        pondokId,
      } = req.body;

      console.log(mulai_vakum.length);

      if (mulai_vakum == "Invalid date" || mulai_vakum.length < 1) {
        const payload = {
          name,
          niu,
          tempat,
          telephone,
          address,
          datebirth,
          gender,
          ayah,
          ibu,
          mulai_masuk,
          mulai_vakum: null,
          pondokId,
        };

        console.log(payload);

        const newData = await Guru.update(payload, {
          returning: true,
          where: { id: req.params.id },
        });
        res.status(200).json({ data: newData });
      } else {
        const payload = {
          name,
          niu,
          tempat,
          telephone,
          address,
          datebirth,
          gender,
          ayah,
          ibu,
          mulai_masuk,
          mulai_vakum,
          pondokId,
        };

        console.log(payload);

        const newData = await Guru.update(payload, {
          returning: true,
          where: { id: req.params.id },
        });
        res.status(200).json({ data: newData });
      }
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async deleteGuru(req, res) {
    try {
      const deleteData = await Guru.destroy({
        where: { id: req.params.id },
      });
      res.status(200).json("delete data" + deleteData + "successfully");
    } catch (error) {
      return res.status(404).json({ data: "pastikan id data benar" });
    }
  }
}

module.exports = GuruController;
