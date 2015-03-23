class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :name
      t.date :birth
      t.integer :sex
      t.string :cpf
      t.string :street
      t.string :cep
      t.string :comp
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :phone

      t.timestamps
    end
  end
end
