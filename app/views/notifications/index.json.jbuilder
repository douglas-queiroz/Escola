json.array!(@notifications) do |notification|
  json.extract! notification, :id, :studant_class_id, :studant_id, :title, :message
  json.url notification_url(notification, format: :json)
end
