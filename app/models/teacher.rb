class Teacher < ActiveRecord::Base
	has_one :user
	accepts_nested_attributes_for :user, :allow_destroy => false

	validates_presence_of :name, message: "Campo obrigatório"
	validates_presence_of :birth, message: "Campo obrigatório"
	validates_presence_of :sex, message: "Campo obrigatório"
	validates_presence_of :cpf, message: "Campo obrigatório"
	validates_presence_of :street, message: "Campo obrigatório"
	validates_presence_of :cep, message: "Campo obrigatório"
	validates_presence_of :comp, message: "Campo obrigatório"
	validates_presence_of :neighborhood, message: "Campo obrigatório"
	validates_presence_of :city, message: "Campo obrigatório"
	validates_presence_of :state, message: "Campo obrigatório"
	validates_presence_of :phone, message: "Campo obrigatório"

	validates_cpf :cpf

	Sex={
		(MASCULINO = 0)=>"Masculino",
		(FEMININO = 1)=>"Feminino"
	}
end
