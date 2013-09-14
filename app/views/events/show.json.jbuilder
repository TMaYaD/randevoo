json.extract! @event, :name, :timestamp, :latitude, :longitude, :location, :created_at, :updated_at
json.users @event.users, :uuid, :gcm_id, :name, :pic, :created_at, :updated_at
