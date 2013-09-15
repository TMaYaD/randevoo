json.array!(@events) do |event|
  json.extract! event, :id, :name, :timestamp, :latitude, :longitude, :location
  json.url event_url(event, format: :json)
end
