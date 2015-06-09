class Notification < ActiveRecord::Base
	belongs_to :student_class
	belongs_to :student
	belongs_to :parent

	Status = {
		(ENVIADO = 0) => "Enviado",
		(RECEBIDO = 1) => "Recebido",
		(LIDO = 2) => "Lido"
	}

end
