json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :name, :birth, :sex, :cpf, :street, :cep, :comp, :neighborhood, :city, :state, :phone
  json.url teacher_url(teacher, format: :json)
end
