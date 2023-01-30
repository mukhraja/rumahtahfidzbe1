const { Roles } = require("../models");
const uuid = require("uuid");

class RoleController {
  static async getRoles(req, res) {
    const newData = await Roles.findAll({
      include: [
        {
          all: true,
        },
      ],
    });
    res.status(200).json({ data: newData });
  }

  static async createRole(req, res) {
    const id = uuid.v4();
    const { name } = req.body;

    const payload = {
      id,
      name,
    };
    const data = await Roles.create(payload);
    res.status(200).json({ data });
  }

  static async updateRole(req, res) {
    const { name } = req.body;

    const payload = {
      name,
    };

    const newData = await Santri.update(payload, { returning: true, where: { id: req.params.id } });
    res.status(200).json({ data: newData });
  }
  catch(error) {
    return res.status(404).json({ data: "Pastikan Semua data benar" });
  }

  static async deleteRole(req, res) {
    try {
      const deleteData = await Roles.destroy({
        where: { id: req.params.id },
      });
      res.status(200).json({ data: deleteData });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }
}

module.exports = RoleController;
