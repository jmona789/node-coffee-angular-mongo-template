mongoose = require 'mongoose'
Schema = mongoose.Schema

OneToManySchema = new Schema
    mongoCollectionIds: [
        type: Schema.ObjectId
        ref: 'mongoCollection'
    ]

OneToMany = mongoose.model 'OneToMany', OneToManySchema

module.exports = OneToMany