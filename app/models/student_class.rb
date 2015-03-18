class StudentClass < ActiveRecord::Base

	Turn = {
		(MANHA = 0)=>"Manhã",
		(TARDE = 1)=>"Tarde",
		(NOITE = 2)=>"Noite",
	}

	validates_presence_of :description, message: "Campo obrigatório"
end
