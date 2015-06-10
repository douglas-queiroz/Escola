class Student < ActiveRecord::Base
	belongs_to :student_class
	has_many :student_parents
	has_many :notifications

	validates_presence_of	:registrations, message: "Campo obrigatório"
	validates_presence_of	:name, message: "Campo obrigatório"
	validates_presence_of	:birth, message: "Campo obrigatório"
end
