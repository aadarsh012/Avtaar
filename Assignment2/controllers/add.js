const { User, Event } = require("../models/user");

exports.addUser = async (req, res, next) => {
  const { username, gender, email } = req.body;

  try {
    const user = await User.create({ username, gender, email });
    res.json(user);
    console.log(user);
  } catch (error) {
    console.log(error);
    res.json(error);
  }
};

exports.addEvent = async (req, res, next) => {
  const { uid, name, occurrence, startDate, endDate } = req.body;

  try {
    const event = await Event.create({ uid, name, occurrence, startDate, endDate });

    if (User.findById(uid)) {
      res.json(event);
      console.log(event);
    } else {
      throw error;
    }
  } catch (error) {
    console.log(error);
    res.json(error);
  }
};
