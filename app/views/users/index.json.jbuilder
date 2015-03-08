json.array!(@users) do |user|
  json.extract! user, :id, :name, :password, :user_type
  json.url user_url(user, format: :json)
end
