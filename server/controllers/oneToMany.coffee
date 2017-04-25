_ = require "lodash"
Promise = require "bluebird"

exports.getOne = (req, res) ->
    db.ManyToOne.findAll
        where:
            id: req.params.id
        include: [
            model: db.ManyToOne
        ]
    .then (dbOneToMany) ->
        res.json dbOneToMany