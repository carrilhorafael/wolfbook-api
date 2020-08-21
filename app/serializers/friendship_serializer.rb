class FriendshipSerializer < ActiveModel::Serializer
  attributes :accept,:friend 
  belongs_to :user
  belongs_to :friend, class_name: "User"

end
