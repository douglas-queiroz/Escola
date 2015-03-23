json.array!(@students) do |student|
  json.extract! student, :id, :registrations, :name, :birth, :sex, :student_class_id
  json.url student_url(student, format: :json)
end
