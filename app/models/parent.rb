class Parent < ActiveRecord::Base
	has_many :children
	accepts_nested_attributes_for :children,
    :allow_destroy => true

    validates_presence_of	:name, message: "Campo obrigatório"
    validates_presence_of	:birth, message: "Campo obrigatório"
    validates_presence_of	:cpf, message: "Campo obrigatório"
    validates_presence_of	:street, message: "Campo obrigatório"
    validates_presence_of	:cep, message: "Campo obrigatório"
    validates_presence_of	:comp, message: "Campo obrigatório"
    validates_presence_of	:neighborhood, message: "Campo obrigatório"
    validates_presence_of	:city, message: "Campo obrigatório"
    validates_presence_of	:state, message: "Campo obrigatório"
    validates_presence_of	:phone, message: "Campo obrigatório"

    validates_cpf :cpf
end
