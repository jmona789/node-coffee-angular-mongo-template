express = require 'express'
# compression = require 'compression'
# bodyParser = require 'body-parser'
# pg = require 'pg'
session = require 'express-session'
SequelizeStore = require('connect-session-sequelize')(session.Store)
# timeout = require 'connect-timeout'

module.exports = (app) ->
    # app.use compression()
    # app.use timeout '100s'
    # app.use bodyParser
    #     limit: '5mb'
    # app.use bodyParser.urlencoded
    #     extended: true
    # app.use bodyParser.json()

    # app.use session
    #     store: new SequelizeStore
    #         db: global.db.sequelize
    #     secret: 'my-super-secret-session'
    #     resave: false
    #     cookie:
    #         maxAge: 7 * 24 * 60 * 60 * 1000

    app.use '/assets', express.static "#{process.cwd()}/dist/assets"
    app.use '/bower_components', express.static "#{process.cwd()}/bower_components"
    app.use '/node_modules', express.static "#{process.cwd()}/node_modules"
    # app.use '/images', express.static "#{process.cwd()}/images"
    app.use '/styles', express.static "#{process.cwd()}/styles"
    # app.use '/vendor', express.static "#{process.cwd()}/bower_components"
    app.use '/views', express.static "#{process.cwd()}/views"
    # app.use '/assets', express.static "#{process.cwd()}/images/assets"
