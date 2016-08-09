class Gift < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :category, presence: true
  has_attached_file :image, styles: {thumb: "175x175#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
