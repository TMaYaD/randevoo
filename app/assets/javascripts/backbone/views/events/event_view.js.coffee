Randevoo.Views.Events ||= {}

class Randevoo.Views.Events.EventView extends Backbone.View
  template: JST["backbone/templates/events/event"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
