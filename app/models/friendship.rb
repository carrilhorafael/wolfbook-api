class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: "User"
  validate :cannot_be_friend_of_himself
  validate :cannot_ask_two_times
  after_create :update_accept
  
  private
    def update_accept
      friendship= Friendship.find_by(user_id: friend_id, friend_id: user_id)
      if friendship.present?
        self.accept = true
        self.save
        friendship.accept = true
        friendship.save
      end
    end
    def cannot_be_friend_of_himself
      if friend_id == user_id
        errors.add(:friendship, "Vocẽ não pode ser amigo de si mesmo")
      end
    end
    def cannot_ask_two_times 
      friendship = Friendship.find_by(user_id: user_id, friend_id: friend_id)
      if friendship.present?
        errors.add(:friendship, "Você já pediu a amizade desse usuário")
      end
    end
    
end
