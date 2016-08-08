class AddColumnsToGift < ActiveRecord::Migration[5.0]
  def change
    add_column :gifts, :store, :string
  end
end
