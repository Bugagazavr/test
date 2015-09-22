class Image < ActiveRecord::Base
  has_one :announcement_image

  mount_uploader :picture, ImageUploader
end
