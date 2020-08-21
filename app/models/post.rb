class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes, as: :likable
  validates :content, presence: true

end
