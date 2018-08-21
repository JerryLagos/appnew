class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :nombre
      t.string :placa
      t.string :marca

      t.timestamps
    end
  end
end
