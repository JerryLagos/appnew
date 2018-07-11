class CreatePersonas < ActiveRecord::Migration[5.2]
  def change
    create_table :personas do |t|
    	t.string :nombre
    	t.string :apellido
    	t.string :cedula
    	t.timestamps
    end
  end
end
