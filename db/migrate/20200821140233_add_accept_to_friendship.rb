class AddAcceptToFriendship < ActiveRecord::Migration[5.2]
  def change
    add_column :friendships, :accept, :boolean, default: false
  end
end
