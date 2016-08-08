class AddWebLinkColumnToGift < ActiveRecord::Migration[5.0]
  def change
    add_column :gifts, :weblink, :string
  end
end
