class AddRegistrationIdToParents < ActiveRecord::Migration
  def change
  	add_column :parents, :registration_id, :string
  end
end
