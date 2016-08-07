class CreateGifts < ActiveRecord::Migration[5.0]
  def change
    create_table :gifts do |t|
      t.string :name
      t.string :model
      t.integer :price
      t.string :category

      t.timestamps
    end
  end
end
