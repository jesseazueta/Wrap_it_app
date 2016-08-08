class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email,
              presence: true,
              uniqueness: true,
              format: {
                with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
              }

  has_many :friendships, dependent: :destroy
  has_many :friends, :through => :friendships
  # has_many :inverse_friends, :through => :friendships, :foreign_key => :friend_id
  has_many :gifts, dependent: :destroy

  has_secure_password



end
