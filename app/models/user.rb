class User < ApplicationRecord
  has_many :friendships, dependent: :destroy
  has_many :friends, :through => :friendships
  has_many :gifts, dependent: :destroy

  has_secure_password

end
