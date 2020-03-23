require 'rails_helper'

RSpec.describe Profile, type: :model do
  describe "Associations" do
    it { should belong_to(:user) }
  end

  describe "Validations" do
    it "is valid with valid attributes"
    it { should validate_presence_of(:nickname) }
    it { should validate_uniqueness_of(:nickname) }
    it { should validate_presence_of(:user) }
  end
end
