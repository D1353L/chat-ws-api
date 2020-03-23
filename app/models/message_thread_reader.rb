class MessageThreadReader < ApplicationRecord
  belongs_to :user
  belongs_to :message_thread
end
