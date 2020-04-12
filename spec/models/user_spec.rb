require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Associations" do
    it { should have_one(:profile) }
  end

  describe "Validations" do
    it "is valid with valid attributes" do
      subject.email = "email@example.com"
      subject.profile = Profile.new
      expect(subject).to be_valid
    end
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_presence_of(:profile) }
  end
end
