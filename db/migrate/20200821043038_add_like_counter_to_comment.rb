class AddLikeCounterToComment < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :like_counter, :integer, default: 0
  end
end
