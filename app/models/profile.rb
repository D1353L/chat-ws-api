class Profile < ApplicationRecord
  belongs_to :user

  validates_presence_of :nickname
  validates_uniqueness_of :nickname
end
