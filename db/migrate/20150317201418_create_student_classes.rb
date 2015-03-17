class CreateStudentClasses < ActiveRecord::Migration
  def change
    create_table :student_classes do |t|
      t.string :description
      t.integer :turn

      t.timestamps
    end
  end
end
