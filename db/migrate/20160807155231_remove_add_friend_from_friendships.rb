class RemoveAddFriendFromFriendships < ActiveRecord::Migration[5.0]
  def change
    remove_column :friendships, :add_friend, :string
  end
end
