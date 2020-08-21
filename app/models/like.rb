class Like < ApplicationRecord
  belongs_to :liked, polymorphic: true
  belongs_to :user

  validate :just_one_like_for_person
  before_create :update_like_counter

  private
    def update_like_counter
      
      @counter = liked_type.find_by!(:liked_id => liked_id)
      
    end
    def just_one_like_for_person
      if Like.find_by(:user_id => user_id).present?
        errors.add(:message => "Você já curtiu essa postagem/comentário")
      end
    end
end
