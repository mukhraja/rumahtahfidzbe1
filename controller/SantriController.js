const { Santri } = require("../models");
const uuid = require("uuid");

class SantriController {
  static async getSantris(req, res) {
    const newData = await Santri.findAll({
      include: [
        {
          all: true,
        },
      ],
    });
    res.status(200).json({ data: newData });
  }

  static async getSantri(req, res) {
    try {
      const { id } = req.params;

      const newData = await Santri.findOne({
        where: { id },
        include: [{ all: true }],
      });

      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(400).json({ data: "Data tidak ditemukan" });
    }
  }

  static async getSantriByRumahTahfiz(req, res) {
    try {
      const { pondokId } = req.params;

      const newData = await Santri.findAll({
        where: { pondokId },
        include: [{ all: true }],
      });

      const databaru = [];

      for (let index = 0; index < newData.length; index++) {
        const element = {
          label: newData[index].name,
          value: newData[index].id,
        };
        databaru.push(element);
      }
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(400).json({ data: "Data tidak ditemukan" });
    }
  }

  static async getSantriByUserSantri(req, res) {
    try {
      const { userId } = req.params;

      const newData = await Santri.findAll({
        where: { userId },
        include: [{ all: true }],
      });

      const databaru = [];

      for (let index = 0; index < newData.length; index++) {
        const element = {
          label: newData[index].name,
          value: newData[index].id,
        };
        databaru.push(element);
      }
      res.status(200).json({ data: databaru });
    } catch (error) {
      return res.status(400).json({ data: "Data tidak ditemukan" });
    }
  }

  static async getSantriByRumahTahfizDropdown(req, res) {
    try {
      const { pondokId } = req.params;

      const newData = await Santri.findAll({
        where: { pondokId },
        include: [{ all: true }],
      });

      const databaru = [];

      for (let index = 0; index < newData.length; index++) {
        const element = {
          label: newData[index].name,
          value: newData[index].id,
        };
        databaru.push(element);
      }

      res.status(200).json({ data: databaru });
    } catch (error) {
      return res.status(400).json({ data: "Data tidak ditemukan" });
    }
  }

  static async getUserByUser(req, res) {
    try {
      const { userId } = req.params;

      const newData = await Santri.findAll({
        where: { UserId: userId },
        include: [{ all: true }],
      });

      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(400).json({ data: "Data tidak ditemukan" });
    }
  }

  static async getSantriByMasterTahfiz(req, res) {
    try {
      const { mastertahfidzId } = req.params;

      const newData = await Santri.findAll({
        where: { "$Pondok.masterpondokId$": mastertahfidzId },
        include: [{ all: true }],
      });

      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(400).json({ data: "Data tidak ditemukan" });
    }
  }

  static async createSantri(req, res) {
    try {
      const { files, fields } = req.fileAttrb;

      if (fields[10].value.length > 1) {
        const payload = {
          id: uuid.v4(),
          name: fields[0].value,
          nis: fields[1].value,
          tempat: fields[2].value,
          datebirth: fields[3].value,
          gender: fields[4].value,
          address: fields[5].value,
          ayah: fields[6].value,
          ibu: fields[7].value,
          telephone: fields[8].value,
          mulai_masuk: fields[9].value,
          mulai_vakum: fields[10].value,
          pondokId: fields[11].value,
          photo: files[0].file.newFilename,
        };

        console.log(payload);

        const newData = await Santri.create(payload);
        res.status(200).json({ data: newData });
      } else {
        const payload = {
          id: uuid.v4(),
          name: fields[0].value,
          nis: fields[1].value,
          tempat: fields[2].value,
          datebirth: fields[3].value,
          gender: fields[4].value,
          address: fields[5].value,
          ayah: fields[6].value,
          ibu: fields[7].value,
          telephone: fields[8].value,
          mulai_masuk: fields[9].value,
          mulai_vakum: null,
          pondokId: fields[11].value,
          photo: files[0].file.newFilename,
        };

        console.log(payload);

        const newData = await Santri.create(payload);
        res.status(200).json({ data: newData });
      }
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async updateSantri(req, res) {
    try {
      const { files, fields } = req.fileAttrb;
      const { id } = req.params;

      if (fields[10].value == "Invalid date") {
        const payload = {
          name: fields[0].value,
          nis: fields[1].value,
          tempat: fields[2].value,
          datebirth: fields[3].value,
          gender: fields[4].value,
          address: fields[5].value,
          ayah: fields[6].value,
          ibu: fields[7].value,
          telephone: fields[8].value,
          mulai_masuk: fields[9].value,
          mulai_vakum: null,
          pondokId: fields[11].value,
          photo: files[0].file.newFilename,
        };

        const newData = await Santri.update(payload, {
          where: { id },
          returning: true,
        });
        res.status(200).json({ data: newData });
      } else {
        const payload = {
          name: fields[0].value,
          nis: fields[1].value,
          tempat: fields[2].value,
          datebirth: fields[3].value,
          gender: fields[4].value,
          address: fields[5].value,
          ayah: fields[6].value,
          ibu: fields[7].value,
          telephone: fields[8].value,
          mulai_masuk: fields[9].value,
          mulai_vakum: fields[10].value,
          pondokId: fields[11].value,
          photo: files[0].file.newFilename,
        };

        const newData = await Santri.update(payload, {
          where: { id },
          returning: true,
        });
        res.status(200).json({ data: newData });
      }
    } catch (error) {
      return res.status(404).json({ data: "Pastikan Semua data benar" });
    }
  }

  static async updateSantriNoFile(req, res) {
    try {
      const {
        name,
        nis,
        tempat,
        datebirth,
        gender,
        address,
        ayah,
        ibu,
        telephone,
        mulai_masuk,
        mulai_vakum,
        pondokId,
      } = req.body;

      if (mulai_vakum == "Invalid date" || mulai_vakum.length < 1) {
        const payload = {
          name,
          nis,
          tempat,
          datebirth,
          gender,
          address,
          ayah,
          ibu,
          telephone,
          mulai_masuk,
          mulai_vakum: null,
          pondokId,
        };

        const newData = await Santri.update(payload, {
          returning: true,
          where: { id: req.params.id },
        });

        res.status(200).json({ data: newData });
      } else {
        const payload = {
          name,
          nis,
          tempat,
          datebirth,
          gender,
          address,
          ayah,
          ibu,
          telephone,
          mulai_masuk,
          mulai_vakum,
          pondokId,
        };

        const newData = await Santri.update(payload, {
          returning: true,
          where: { id: req.params.id },
        });
        res.status(200).json({ data: newData });
      }
    } catch (error) {
      return res.status(404).json({ data: "Pastikan Semua data benar" });
    }
  }

  static async updateSantriUser(req, res) {
    try {
      const { userId } = req.body;

      const payload = {
        UserId: userId,
      };

      const newData = await Santri.update(payload, {
        returning: true,
        where: { id: req.params.id },
      });

      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async deleteSantri(req, res) {
    try {
      const deleteData = await Santri.destroy({
        where: { id: req.params.id },
      });
      res.status(200).json({ data: deleteData });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }
}

module.exports = SantriController;
