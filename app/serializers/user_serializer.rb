class UserSerializer < ActiveModel::Serializer
  attributes :id, :gender, :age, :name, :email, :role
  has_many :posts
  has_many :comments
  has_many :likes
  has_many :friendships

end
