class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :friendships, :create, :add_friend
    rename_column :friendships, :destroy, :remove_friend
  end
end
