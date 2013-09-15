json.organizing_events @events.organizing_events do |event|
  json.extract! event, :id, :name, :timestamp, :latitude, :longitude, :location
  json.url event_url(event, format: :json)
end

json.participating_events @events.participating_events do |event|
  json.extract! event, :id, :name, :timestamp, :latitude, :longitude, :location
  json.url event_url(event, format: :json)
end
