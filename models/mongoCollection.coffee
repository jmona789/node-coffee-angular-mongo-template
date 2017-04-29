mongoose = require 'mongoose'
Schema = mongoose.Schema

mongoCollectionSchema = new Schema
  name:
    type: String
    required: true

mongoCollection = mongoose.model 'mongoCollection', mongoCollectionSchema

module.exports = mongoCollection
