require 'rails_helper'

RSpec.describe PrivateMessage, type: :model do
  describe "Associations" do
    it { should belong_to(:message_thread) }
    it { should belong_to(:user) }
  end

  describe "Validations" do
    subject { described_class.new }

    it "is valid with valid attributes" do
      subject.content = "aa"
      subject.user = User.new
      subject.message_thread = MessageThread.new
      expect(subject).to be_valid
    end
    it { should validate_presence_of(:content) }
  end
end
