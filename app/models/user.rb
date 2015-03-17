class User < ActiveRecord::Base
	belongs_to :teacher

	validates_presence_of :name, message: "Campo obrigatório"
	validates_presence_of :password, message: "Campo obrigatório"
end
