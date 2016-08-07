class AddUserIdToGift < ActiveRecord::Migration[5.0]
  def change
    add_column :gifts, :user_id, :integer, :foreign_key => :true
  end
end
