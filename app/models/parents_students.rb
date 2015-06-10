class ParentsStudents
	belongs_to :parent
	belongs_to :student

	accepts_nested_attributes_for :student
end