class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :picture

      t.timestamps null: false
    end
  end
end
