class Image < ActiveRecord::Base
  has_one :announcement_image

  validates :picture, presence: true

  mount_uploader :picture, ImageUploader
end
