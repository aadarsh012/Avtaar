const mongoose = require("mongoose");

const UserSchema = new mongoose.Schema({
  username: {
    type: String,
    required: [true, "Please Provide Your UserName"]
  },
  gender: {
    type: String,
    enum: ["Male", "Female"],
    required: [true, "Please Provide Your Gender"]
  },
  email: {
    type: String,
    required: [true, "Please Provide Your e-mail"],
    unique: true,
    match: [
      /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/,
      "Please Provide a Valid E-mail!"
    ]
  }
});

const EventSchema = new mongoose.Schema({
  uid: {
    type: mongoose.SchemaTypes.ObjectId,
    required: [true, "please provide user id for user"]
  },
  name: {
    type: String,
    required: true
  },
  occurrence: {
    type: String,
    enum: ["WEEKLY", "MONTHLY", "YEARLY", "ONETIME"],
    required: true
  },
  startDate: {
    type: Date,
    required: true
  },
  endDate: {
    type: Date,
    required: true
  }
});

exports.User = mongoose.model("User", UserSchema);
exports.Event = mongoose.model("Event", EventSchema);
