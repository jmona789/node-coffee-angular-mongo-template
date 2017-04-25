# epilogue = require 'epilogue'

# module.exports = (app) ->
#   epilogue.initialize
#     app: app
#     sequelize: db.sequelize

#   RandomSqlTable = epilogue.resource
#     model: db.RandomSqlTable
#     endpoints: [
#       '/api/randomSqlTables'
#       '/api/randomSqlTables/:id'
#     ]
#     associations: true
#     pagination: false