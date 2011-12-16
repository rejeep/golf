class AddMovieToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :movie, :string
  end
end
