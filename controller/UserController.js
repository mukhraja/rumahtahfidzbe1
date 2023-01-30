const { Users, Pondok, Masterpondok, Santri } = require("../models");
const uuid = require("uuid");
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
const { Model } = require("sequelize");

class UserController {
  static async getUsers(req, res) {
    try {
      const data = await Users.findAll({
        include: [
          {
            all: true,
          },
        ],
      });
      res.status(200).json({ data });
    } catch (error) {
      res.status(404).json({ data: error.message });
    }
  }

  static async getUser(req, res) {
    try {
      const { id } = req.params;

      const newData = await Users.findOne({
        where: { id },
        include: [
          { model: Santri },
          {
            model: Pondok,
            include: [
              {
                model: Masterpondok,
              },
            ],
          },
        ],
      });

      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(400).json({ data: error });
    }
  }

  static async getUserByRumahTahfidz(req, res) {
    try {
      const { pondokId } = req.params;

      const newData = await Users.findAll({
        where: { pondokId },
        include: [{ all: true }],
      });

      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(400).json({ data: "Data tidak ditemukan" });
    }
  }

  static async getUserByMasterTahfidz(req, res) {
    try {
      const { mastertahfidzId } = req.params;

      const newData = await Users.findAll({
        where: { "$Pondok.masterpondokId$": mastertahfidzId },
        include: [{ all: true }],
      });

      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(400).json({ data: "Data tidak ditemukan" });
    }
  }

  static async getUserByAdmin(req, res) {
    try {
      const newData = await Users.findAll({
        where: { roleId: "8b273d68-fe09-422d-a660-af3d8312f884" },
        include: [{ all: true }],
      });

      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(400).json({ data: "Data tidak ditemukan" });
    }
  }

  static async createUser(req, res) {
    try {
      const { files, fields } = req.fileAttrb;

      const password = fields[2].value;
      const hashPassword = bcrypt.hashSync(password, 10);

      const payload = {
        id: uuid.v4(),
        name: fields[0].value,
        email: fields[1].value,
        password: hashPassword,
        telephone: fields[3].value,
        address: fields[4].value,
        datebirth: fields[5].value,
        age: fields[6].value,
        gender: fields[7].value,
        roleId: fields[8].value,
        pondokId: fields[9].value,
        photo: files[0].file.newFilename,
      };

      console.log(payload);

      const newData = await Users.create(payload);
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async createUserSantri(req, res) {
    try {
      const { files, fields } = req.fileAttrb;

      const password = fields[2].value;
      const hashPassword = bcrypt.hashSync(password, 10);

      const payload = {
        id: fields[10].value,
        name: fields[0].value,
        email: fields[1].value,
        password: hashPassword,
        telephone: fields[3].value,
        address: fields[4].value,
        datebirth: fields[5].value,
        age: fields[6].value,
        gender: fields[7].value,
        roleId: fields[8].value,
        pondokId: fields[9].value,
        photo: files[0].file.newFilename,
      };

      console.log(payload);

      const newData = await Users.create(payload);
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async createNoFileUser(req, res) {
    try {
      const {
        name,
        email,
        password,
        telephone,
        address,
        datebirth,
        gender,
        age,
        roleId,
        pondokId,
      } = req.body;

      const hashPassword = bcrypt.hashSync(password, 10);

      const payload = {
        id: uuid.v4(),
        name,
        email,
        password: hashPassword,
        telephone,
        address,
        datebirth,
        age,
        gender,
        roleId,
        pondokId,
      };

      const newData = await Users.create(payload);
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async createNoFileUserSantri(req, res) {
    try {
      const {
        id,
        name,
        email,
        password,
        telephone,
        address,
        datebirth,
        gender,
        age,
        roleId,
        pondokId,
      } = req.body;

      const hashPassword = bcrypt.hashSync(password, 10);

      const payload = {
        id,
        name,
        email,
        password: hashPassword,
        telephone,
        address,
        datebirth,
        age,
        gender,
        roleId,
        pondokId,
      };

      const newData = await Users.create(payload);
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async updateNoFileUser(req, res) {
    console.log("sampai disini");
    try {
      const {
        name,
        email,
        password,
        telephone,
        address,
        datebirth,
        gender,
        age,
        roleId,
        pondokId,
      } = req.body;

      if (password.length > 2) {
        const hashPassword = bcrypt.hashSync(password, 10);
        const payload = {
          name,
          email,
          password: hashPassword,
          telephone,
          address,
          datebirth,
          gender,
          age,
          roleId,
          pondokId,
        };

        console.log(payload);

        const newData = await Users.update(payload, {
          returning: true,
          where: { id: req.params.id },
        });
        res.status(200).json({ data: newData });
      } else {
        const payload = {
          name,
          email,
          telephone,
          address,
          datebirth,
          gender,
          age,
          roleId,
          pondokId,
        };
        console.log("menjalankan ini tak ade");

        const newData = await Users.update(payload, {
          returning: true,
          where: { id: req.params.id },
        });
        res.status(200).json({ data: newData });
      }
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async updateUser(req, res) {
    try {
      const { id } = req.params;
      const { files, fields } = req.fileAttrb;

      console.log(fields[2].value.length);

      if (fields[2].value.length > 2) {
        const password = fields[2].value;
        const hashPassword = bcrypt.hashSync(password, 10);

        const payload = {
          name: fields[0].value,
          email: fields[1].value,
          password: hashPassword,
          telephone: fields[3].value,
          address: fields[4].value,
          datebirth: fields[5].value,
          age: fields[6].value,
          gender: fields[7].value,
          roleId: fields[8].value,
          pondokId: fields[9].value,
          photo: files[0].file.newFilename,
        };

        console.log(payload);

        const newData = await Users.update(payload, {
          where: { id },
          returning: true,
        });
        res.status(200).json({ data: newData });
      } else {
        console.log("ubah password");
        const payload = {
          name: fields[0].value,
          email: fields[1].value,
          telephone: fields[3].value,
          address: fields[4].value,
          datebirth: fields[5].value,
          age: fields[6].value,
          gender: fields[7].value,
          roleId: fields[8].value,
          pondokId: fields[9].value,
          photo: files[0].file.newFilename,
        };

        console.log(payload);

        const newData = await Users.update(payload, {
          where: { id },
          returning: true,
        });

        console.log(newData);
        res.status(200).json({ data: newData });
      }
    } catch (error) {
      console.log(error.message);
      return res.status(404).json({ data: error.message });
    }
  }

  static async deleteUser(req, res) {
    try {
      const deleteData = await Users.destroy({
        where: { id: req.params.id },
      });
      res.status(200).json({ data: deleteData });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async login(req, res) {
    try {
      const user = await Users.findAll({
        where: {
          email: req.body.email,
        },
        include: [
          { all: true },
          {
            model: Pondok,
            include: [
              {
                model: Masterpondok,
              },
            ],
          },
        ],
      });
      const match = await bcrypt.compare(req.body.password, user[0].password);
      if (match) {
        const userId = user[0].id;
        const name = user[0].name;
        const email = user[0].email;
        const role = user[0].roleId;
        const roleName = user[0].Role.name;
        const photo = user[0].photo;
        const logotahfidz = user[0].Pondok.Masterpondok.logo;
        const pondokId = user[0].pondokId;
        const masterpondokId = user[0].Pondok.masterpondokId;
        const accessToken = jwt.sign(
          { userId, name, email, role, photo, logotahfidz, roleName },
          process.env.ACCESS_TOKEN_SECRET,
          { expiresIn: "1d" }
        );
        const refresh_token = jwt.sign(
          { userId, name, email, role, photo, logotahfidz, roleName },
          process.env.REFRESH_TOKEN_SECRET,
          { expiresIn: "1d" }
        );

        const cek = await Users.update(
          { refresh_token: refresh_token },
          {
            where: {
              id: userId,
            },
          }
        );
        res.cookie("refreshToken", refresh_token, {
          httpOnly: true,
          maxAge: 24 * 60 * 60 * 1000,
        });
        res.status(200).json({
          profile: {
            name,
            email,
            role,
            photo,
            logotahfidz,
            roleName,
            userId,
            pondokId,
            masterpondokId,
          },
          token: accessToken,
        });
      } else {
        next(error);
      }
    } catch (error) {
      console.log(error);
      res.status(404).json({ data: "Email dan Password Salah" });
    }
  }
}

module.exports = UserController;
