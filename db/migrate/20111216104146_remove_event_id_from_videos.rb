class RemoveEventIdFromVideos < ActiveRecord::Migration
  def up
    remove_column :videos, :event_id
  end

  def down
    add_column :videos, :event_id, :integer
  end
end
