class Announcement < ActiveRecord::Base
  has_many :announcement_images
  has_many :images, through: :announcement_images 
end
