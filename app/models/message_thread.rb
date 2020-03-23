class MessageThread < ApplicationRecord
  has_many :users, through: :message_thread_readers
  has_many :message_thread_readers
  has_many :private_messages

  validates_presence_of :uuid
  validates_uniqueness_of :uuid
end
