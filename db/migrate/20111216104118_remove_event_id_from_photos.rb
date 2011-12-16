class RemoveEventIdFromPhotos < ActiveRecord::Migration
  def up
    remove_column :photos, :event_id
  end

  def down
    add_column :photos, :event_id, :integer
  end
end
