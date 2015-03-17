class StudentClass < ActiveRecord::Base
	validates_presence_of :description, message: "Campo obrigatório"
end
