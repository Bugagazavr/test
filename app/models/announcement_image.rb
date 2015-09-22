class AnnouncementImage < ActiveRecord::Base
  belongs_to :announcement
  belongs_to :image
end
