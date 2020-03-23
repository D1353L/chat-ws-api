require 'rails_helper'

RSpec.describe MessageThread, type: :model do
  describe "Associations" do
    it { should have_many(:users).through(:message_thread_readers) }
    it { should have_many(:private_messages) }
  end

  describe "Validations" do
    subject { described_class.new }

    it "is valid with valid attributes" do
      subject.uuid = SecureRandom.uuid
      expect(subject).to be_valid
    end
    it { should validate_presence_of(:uuid) }
    it { should validate_uniqueness_of(:uuid) }
  end
end
