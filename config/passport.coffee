# crypto = require 'crypto'
# passport = require 'passport'
# {Strategy} = require 'passport-local'

# module.exports = (app) ->
#     passport.serializeUser (user, cb) ->
#         cb null, user.id

#     passport.deserializeUser (id, cb) ->
#         db.User.findOne
#             attributes: [
#                 'id'
#                 'firstName'
#                 'lastName'
#                 'email'
#                 'phoneNumber'
#                 'createdAt'
#                 'type'
#                 'status'
#             ]
#             where:
#                 id: id
#             .then (dbUser) ->
#                 cb null, dbUser
#             .catch (err) ->
#                 cb err

#     passport.use new Strategy
#         usernameField: 'email'
#     ,
#         (username, password, cb) ->
#             hashedPassword = crypto.createHash('sha256').update('brainiac is awesome' + password).digest('base64')

#             db.User.findOne
#                 where:
#                     email: username
#                     password: hashedPassword
#                     status: 'active'
#                 .then (dbUser) ->
#                     if not dbUser
#                         return cb null, false

#                     cb null, dbUser
#                 .catch (err) ->
#                     cb err

#     app.use passport.initialize()
#     app.use passport.session()

#     app.post '/api/login', passport.authenticate('local'), (req, res) ->
#         res.json req.user
#     app.delete '/api/login', (req, res) ->
#         req.logout()
#         res.json {}
