json.extract! @event, :id, :name, :timestamp, :latitude, :longitude, :location, :created_at, :updated_at
json.users @event.users, :id, :uuid, :gcm_id, :name, :pic, :created_at, :latitude, :longitude, :updated_at
