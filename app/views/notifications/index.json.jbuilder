json.array!(@notifications) do |notification|
  json.extract! notification, :id, :title, :message, :student, :created_at, :status
end
