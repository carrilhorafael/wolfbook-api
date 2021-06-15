class ConversationSerializer < ActiveModel::Serializer
  attributes :id
  has_one :speaker1
  has_one :speaker2
  has_many :messages


end
