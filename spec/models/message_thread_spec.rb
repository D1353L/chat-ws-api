require 'rails_helper'

RSpec.describe MessageThread, type: :model do
  describe "Associations" do
    it { should have_many(:users) }
    it { should have_many(:private_messages) }
  end

  describe "Validations" do
    it "is valid with valid attributes"
    it { should validate_presence_of(:uuid) }
    it { should validate_uniqueness_of(:uuid) }
  end
end
