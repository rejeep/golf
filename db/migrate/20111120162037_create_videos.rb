class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :movie
      t.text :description

      t.timestamps
    end
  end
end
