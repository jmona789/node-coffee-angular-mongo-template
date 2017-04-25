exports.listAll = (req, res) ->
    db.RandomSqlTable.findAll()
    .then (response) ->
        res.json response
        # where:
        #   query
        # include: [
        #   model: db.RelatedTable

    # .map (dbRandomSqlTable) ->
    #     randomSqlTableObj =
    #         firstName : dbBooking.Student.firstName,
    #         lastName:  dbBooking.Student.lastName
    #         checkinTime : dbBooking.checkinTime,
    #         checkoutTime : dbBooking.checkoutTime,
    #         SubjectId : dbBooking.Subject.id,
    #         time : dbBooking.Slot.time
        # .then (response) ->
        #     res.json response