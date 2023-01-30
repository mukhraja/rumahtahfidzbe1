const { UserSantri } = require("../models");

class UserSantriController {
  static async createUserSantri(req, res) {
    try {
      const { id, santri } = req.body;

      console.log(req.body);

      const payload = {
        UserId: id,
        SantriId: santri,
      };

      console.log(payload);

      const newData = await UserSantri.create(payload);
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }
}

module.exports = UserSantriController;
