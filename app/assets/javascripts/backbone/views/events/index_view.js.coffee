Randevoo.Views.Events ||= {}

class Randevoo.Views.Events.IndexView extends Backbone.View
  template: JST["backbone/templates/events/index"]

  initialize: () ->
    @options.events.bind('reset', @addAll)

  addAll: () =>
    @options.events.each(@addOne)

  addOne: (event) =>
    view = new Randevoo.Views.Events.EventView({model : event})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(events: @options.events.toJSON() ))
    @addAll()

    return this
