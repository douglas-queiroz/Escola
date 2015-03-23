class StudentClass < ActiveRecord::Base
	has_one :student

	Turn = {
		(MANHA = 0)=>"Manhã",
		(TARDE = 1)=>"Tarde",
		(NOITE = 2)=>"Noite",
	}

	validates_presence_of :description, message: "Campo obrigatório"
end
