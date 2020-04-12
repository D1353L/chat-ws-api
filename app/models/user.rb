class User < ApplicationRecord
  has_one :profile

  devise :database_authenticatable, :registerable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JWTBlacklist
end
