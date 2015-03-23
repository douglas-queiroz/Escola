class CreateStudentsParentsJointTable < ActiveRecord::Migration
  def change
    create_table :parents_students, id: false do |t|
    	t.integer :parent_id
    	t.integer :student_id
    end
  end
end
