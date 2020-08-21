class Like < ApplicationRecord
  belongs_to :user
  belongs_to :likable, polymorphic: true
  validate :just_one_like_for_person
  private
    def just_one_like_for_person
      if Like.find_by(user_id: user_id, likable: likable).present?
        errors.add(:double_like, "Você já deu like")
      end
    end
end
