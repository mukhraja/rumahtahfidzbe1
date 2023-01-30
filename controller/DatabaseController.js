const mysqldump = require("mysqldump");
const path = require("path");
require("dotenv").config();

class DatabaseController {
  static async exportDatabase(req, res) {
    try {
      await mysqldump({
        connection: {
          host: process.env.DB_HOST,
          user: process.env.DB_USERNAME,
          password: process.env.DB_PASSWORD,
          database: process.env.DB_DATABASE,
        },
        dump: { schema: { table: { dropIfExist: true } } },
        dumpToFile: path.join(__dirname, "../backupdatabase/rumahtahfiz.sql"),
      });

      const file = path.join(__dirname, "../backupdatabase/rumahtahfiz.sql");
      res.download(file);
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  //   static async importDatabase(req, res) {
  //     try {
  //       const connection = mysql.createConnection({
  //         host: process.env.DB_HOST,
  //         user: process.env.DB_USERNAME,
  //         password: process.env.DB_PASSWORD,
  //         database: process.env.DB_DATABASE,
  //         multipleStatements: true,
  //       });

  //       console.log(req.file);

  //       connection.query(req.file, (err) => {
  //         console.log(err ? err : "restored!");
  //       });
  //     } catch (error) {
  //       return res.status(404).json({ data: error.message });
  //     }
  //   }
}

module.exports = DatabaseController;
