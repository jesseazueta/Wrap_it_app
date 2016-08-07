class User < ApplicationRecord
  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :gifts
  has_secure_password

end
