require('dotenv').config()

express = require 'express'
router = express.Router()

randomSqlTableController = require '../server/controllers/randomSqlTable'
oneToManyController = require '../server/controllers/oneToMany'

module.exports = (app) ->
    # alt API routes
    app.get '/api/randomSqlTableAltApiRoute', randomSqlTableController.listAll

    app.get '/api/v1/OneToMany/:OneToManyId', oneToManyController.getOne

