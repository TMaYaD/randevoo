Randevoo.Views.Events ||= {}

class Randevoo.Views.Events.ShowView extends Backbone.View
  template: JST["backbone/templates/events/show"]

  initialize: ->
    @options.model.bind 'change', @render

  render: =>
    $(@el).html(@template(@model.toJSON() ))
    return this
