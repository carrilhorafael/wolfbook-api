class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, :as => :liked
  has_many :comments
  validates :content, presence: true

end
