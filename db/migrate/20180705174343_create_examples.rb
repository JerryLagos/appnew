class CreateExamples < ActiveRecord::Migration[5.2]
  def change
    create_table :examples do |t|
      t.string :titulo
      t.string :texto
      t.string :author 
      t.timestamps
    end
  end
end
