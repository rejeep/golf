class CreateSliderPhotos < ActiveRecord::Migration
  def change
    create_table :slider_photos do |t|
      t.string :image

      t.timestamps
    end
  end
end
