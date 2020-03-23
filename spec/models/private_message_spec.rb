require 'rails_helper'

RSpec.describe PrivateMessage, type: :model do
  describe "Associations" do
    it { should belong_to(:message_thread) }
    it { should belong_to(:user) }
  end

  describe "Validations" do
    it "is valid with valid attributes"
    it { should validate_presence_of(:content) }
    it { should validate_presence_of(:message_thread) }
    it { should validate_presence_of(:user) }
  end
end
