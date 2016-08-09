class User < ApplicationRecord
  has_many :friendships, dependent: :destroy
  has_many :friends, :through => :friendships
  has_many :gifts, dependent: :destroy
# This method associates the attribute ":image" with a file attachment
  has_attached_file :image
  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  has_secure_password

  validates :first_name, presence: true
   validates :last_name, presence: true
   validates :email,
               presence: true,
               uniqueness: true,
               format: {
                 with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
               }

end
