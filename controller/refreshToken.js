const { Users } = require("../models");
const jwt = require("jsonwebtoken");

class RefreshToken {
  static async getRefreshToken(req, res) {
    try {
      const refreshToken = req.cookies.refreshToken;
      console.log(refreshToken);
      console.log(!refreshToken);
      if (!refreshToken) return res.sendStatus(401);
      const user = await Users.findAll({
        where: {
          refresh_token: refreshToken,
        },
      });
      console.log(user);
      if (!user[0]) return res.sendStatus(403);
      jwt.verify(refreshToken, process.env.REFRESH_TOKEN_SECRET, (err, decoded) => {
        const userId = user[0].id;
        const name = user[0].name;
        const email = user[0].email;
        const accessToken = jwt.sign({ userId, name, email }, process.env.ACCESS_TOKEN_SECRET, {
          expiresIn: "15s",
        });
        console.log(accessToken);
        res.status(200).json({ data: accessToken });
      });
    } catch (error) {
      console.log(error);
    }
  }
}

module.exports = RefreshToken;
