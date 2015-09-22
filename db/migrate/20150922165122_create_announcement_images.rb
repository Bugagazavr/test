class CreateAnnouncementImages < ActiveRecord::Migration
  def change
    create_table :announcement_images do |t|
      t.belongs_to :announcement, index: true, foreign_key: true
      t.belongs_to :image, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
