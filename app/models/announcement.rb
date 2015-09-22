class Announcement < ActiveRecord::Base
  has_many :announcement_images
  has_many :images, through: :announcement_images

  accepts_nested_attributes_for :announcement_images, allow_destroy: true

  validates :text, presence: true
end
