class CreateGarments < ActiveRecord::Migration
  def change
    create_table :garments do |t|
      t.string :style
      t.string :period
      t.string :genre
      t.string :material
      t.string :available_size
      t.integer :quantity
      t.decimal :price

      t.timestamps
    end
  end
end
