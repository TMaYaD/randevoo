json.array!(@events) do |event|
  json.extract! event, :name, :time, :latitude, :longitude
  json.url event_url(event, format: :json)
end
