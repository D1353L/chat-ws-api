require 'rails_helper'

RSpec.describe MessageThreadReader, type: :model do
  describe "Associations" do
    it { should belong_to(:user) }
    it { should belong_to(:message_thread) }
  end
end
