require('dotenv').config()

express = require 'express'

mongoose = require 'mongoose'

# AuthController = require './server/controllers/auth'
# RandomSqlTableController = require './server/controllers/randomsqltable'

app = express()
http = require('http').Server(app)

# Database
global.db = require './models'

# Configure express
require('./config/express')(app)
# require('./config/passport')(app)

# require('./config/activity')(app)

# # Configure API Routes
require('./config/api')(app)

# app.get '/api/isAuthenticated', AuthController.clientAuthenticate
# app.get '/api/v1/checkedInBookings', RandomSqlTableController.getCheckedInStudents
require('./server/routes')(app)

app.get '/*', (req, res) ->
    res.sendFile "#{process.cwd()}/views/index.html"

port = process.env.PORT || 3001

mongoose.connect process.env.MONGODB_URI, (err) ->
    if err then console.log err else console.log 'connected to db'
    # require('./scripts/smsReminders/smsReminders')()
    # require('./scripts/deletePdfs')()
module.exports = app

app.listen process.env.PORT
console.log "Listening on port #{process.env.PORT} on #{env}"