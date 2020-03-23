class User < ApplicationRecord
  has_one :profile

  validates_presence_of :email, :profile
  validates_uniqueness_of :email

end
