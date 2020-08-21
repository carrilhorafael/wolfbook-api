class UserSerializer < ActiveModel::Serializer
  attributes :id, :gender, :age, :name, :email
  has_many :post
  has_many :comments
  has_many :likes

end
