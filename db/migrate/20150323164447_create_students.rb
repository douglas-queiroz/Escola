class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :registrations
      t.string :name
      t.date :birth
      t.integer :sex
      t.integer :student_class_id

      t.timestamps
    end
  end
end
