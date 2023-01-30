const userRoute = require("./userRoute");
const iqroRoute = require("./iqroRoute");
const santriRoute = require("./santriRoute");
const guruRoute = require("./guruRoute");
const pondokRoute = require("./pondokRoute");
const alquranRoute = require("./alquranRoute");
const surahpendekRoute = require("./surahpendekRoute");
const roleRoute = require("./roleRoute");
const databaseRoute = require("./databaseRoute");
const imageRoute = require("./imageRoute");
const iqroguruRoute = require("./iqroguruRoute");
const surahpendekguruRoute = require("./surahpendekguruRoute");
const alquranguruRoute = require("./alquranguruRoute");
const masterpondokRoute = require("./masterpondokRoute");
const usersantriRoute = require("./usersantriRoute");
const route = require("express").Router();

route.use("/newbackend/v1/api/user", userRoute);
route.use("/newbackend/v1/api/iqro", iqroRoute);
route.use("/newbackend/v1/api/santri", santriRoute);
route.use("/newbackend/v1/api/guru", guruRoute);
route.use("/newbackend/v1/api/pondok", pondokRoute);
route.use("/newbackend/v1/api/masterpondok", masterpondokRoute);
route.use("/newbackend/v1/api/alquran", alquranRoute);
route.use("/newbackend/v1/api/surahpendek", surahpendekRoute);
route.use("/newbackend/v1/api/database", databaseRoute);
route.use("/newbackend/v1/api/role", roleRoute);
route.use("/newbackend/v1/api/iqroguru", iqroguruRoute);
route.use("/newbackend/v1/api/surahpendekguru", surahpendekguruRoute);
route.use("/newbackend/v1/api/alquranguru", alquranguruRoute);
route.use("/newbackend/v1/api/usersantri", usersantriRoute);

route.use("/newbackend/v1/api/gambar", imageRoute);

module.exports = route;
