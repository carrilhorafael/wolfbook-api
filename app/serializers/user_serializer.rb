class UserSerializer < ActiveModel::Serializer
  attributes :id, :gender, :age, :name, :email
  has_many :posts
  has_many :comments
  has_many :likes
  has_many :friendships
  has_many :friends, through: :friendships

end
