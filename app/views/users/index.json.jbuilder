json.array!(@users) do |user|
  json.extract! user, :id, :name, :pass, :mail, :rol
  json.url user_url(user, format: :json)
end
