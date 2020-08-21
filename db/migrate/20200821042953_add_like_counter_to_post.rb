class AddLikeCounterToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :like_counter, :integer, default: 0
  end
end
