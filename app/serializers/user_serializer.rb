class UserSerializer < ActiveModel::Serializer
  attributes :id, :gender, :age, :name, :email
  has_many :posts
  has_many :comments
  has_many :likes

end
