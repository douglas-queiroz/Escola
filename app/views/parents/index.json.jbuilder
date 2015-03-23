json.array!(@parents) do |parent|
  json.extract! parent, :id, :name, :birth, :sex, :cpf, :street, :cep, :comp, :neighborhood, :city, :state, :phone
  json.url parent_url(parent, format: :json)
end
