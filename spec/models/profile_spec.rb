require 'rails_helper'

RSpec.describe Profile, type: :model do
  describe "Associations" do
    it { should belong_to(:user) }
  end

  describe "Validations" do
    it "is valid with valid attributes" do
      subject.nickname = "nick"
      subject.user = User.new
      expect(subject).to be_valid
    end
    it { should validate_presence_of(:nickname) }
    it { should validate_uniqueness_of(:nickname) }
  end
end
