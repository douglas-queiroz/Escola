json.array!(@notifications) do |notification|
  json.extract! notification, :id, :title, :message, :student, :updated_at
end
