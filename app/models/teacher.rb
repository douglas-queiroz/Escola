class Teacher < ActiveRecord::Base
	has_one :user
	accepts_nested_attributes_for :user, :allow_destroy => false

	Sex={
		(MASCULINO = 0)=>"Masculino",
		(FEMININO = 1)=>"Feminino"
	}
end
