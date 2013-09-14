json.array!(@users) do |user|
  json.extract! user, :uuid, :gcm_id, :name, :pic
  json.url user_url(user, format: :json)
end
