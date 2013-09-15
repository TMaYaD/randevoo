class Randevoo.Routers.EventsRouter extends Backbone.Router
  initialize: (options) ->
    @events = new Randevoo.Collections.EventsCollection()
    @events.fetch()

  routes:
    "new"      : "newEvent"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newEvent: ->
    @view = new Randevoo.Views.Events.NewView(collection: @events)
    $("body").html(@view.render().el)

  index: ->
    @view = new Randevoo.Views.Events.IndexView(events: @events)
    $("body").html(@view.render().el)

  show: (id) ->
    event = @events.get(id)

    @view = new Randevoo.Views.Events.ShowView(model: event)
    $("body").html(@view.render().el)

  edit: (id) ->
    event = @events.get(id)

    @view = new Randevoo.Views.Events.EditView(model: event)
    $("body").html(@view.render().el)
