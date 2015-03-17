json.array!(@student_classes) do |student_class|
  json.extract! student_class, :id, :description, :turn
  json.url student_class_url(student_class, format: :json)
end
