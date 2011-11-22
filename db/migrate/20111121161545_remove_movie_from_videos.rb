class RemoveMovieFromVideos < ActiveRecord::Migration
  def up
    remove_column :videos, :movie
  end

  def down
    add_column :videos, :movie, :string
  end
end
