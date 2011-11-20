class AddEventIdToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :event_id, :integer
  end
end
