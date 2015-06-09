class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.integer :student_class_id
      t.integer :student_id
      t.string :title
      t.text :message

      t.timestamps
    end
  end
end
