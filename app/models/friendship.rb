class Friendship < ApplicationRecord
  belongs_to :user
  def request
    @friend_id = params[:id]
    puts @friend_id
  end
end
