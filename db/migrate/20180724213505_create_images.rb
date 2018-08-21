class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :description
      t.integer :like_counter
      t.integer :localitation

      t.timestamps
    end
  end
end
