class Conversation < ApplicationRecord
  belongs_to :speaker1, class_name: "User"
  belongs_to :speaker2, class_name: "User"
  has_many :messages
  validate :speakers_must_be_friends

  def speakers_must_be_friends
    friendship = Friendship.find_by(user_id: speaker1.id, friend_id: speaker2.id, accept: true)
    if friendship.nil?
      errors.add(:friends, "This speakers arent friends")
    end
  end
end
