class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :sender, class_name: "User", foreign_key: "sender_id"
  after_create {ConversationChannel.broadcast_to("ChatRoom-#{conversation.id}", conversation.messages)}
  validate :sender_on_conversation
  def sender_on_conversation
    if sender.id != conversation.speaker1.id && sender.id != conversation.speaker2.id
      errors.add(:sender, "Sender isnt on this conversation")
    end
  end
end
