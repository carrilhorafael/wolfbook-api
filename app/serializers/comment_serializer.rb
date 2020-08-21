class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content
  belongs_to :user
  belongs_to :post
  has_many :likes, as: :likable

end
