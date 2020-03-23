class PrivateMessage < ApplicationRecord
  belongs_to :user
  belongs_to :message_thread

  validates_presence_of :content
end
