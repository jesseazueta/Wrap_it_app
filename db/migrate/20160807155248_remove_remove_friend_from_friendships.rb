class RemoveRemoveFriendFromFriendships < ActiveRecord::Migration[5.0]
  def change
    remove_column :friendships, :remove_friend, :string
  end
end
