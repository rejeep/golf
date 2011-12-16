class DropSliderPhotos < ActiveRecord::Migration
  def up
    drop_table :slider_photos
  end

  def down
    create_table :slider_photos do |t|
      t.string :image

      t.timestamps
    end
  end
end
