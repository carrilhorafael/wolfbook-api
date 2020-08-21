class FriendshipSerializer < ActiveModel::Serializer
  attributes :friend
  belongs_to :user
  belongs_to :friend, class_name: "User"

end
