const uid = require("uniqid");

const uidGenerate = (req, res, next) => {
  const { username } = req.params;
  const date = new Date();
  res.json({
    id: uid(),
    username: username,
    time: `${date.getDate()}-${
      date.getMonth() + 1
    }-${date.getFullYear()}, ${date.getHours()}:${date.getMinutes()}:${date.getSeconds()}`
  });
};

module.exports = uidGenerate;
