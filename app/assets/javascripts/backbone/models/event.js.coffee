class Randevoo.Models.Event extends Backbone.Model
  paramRoot: 'event'

  defaults:
    name: null
    time: null
    latitude: null
    longitude: null
    location: null

class Randevoo.Collections.EventsCollection extends Backbone.Collection
  model: Randevoo.Models.Event
  url: '/events'
