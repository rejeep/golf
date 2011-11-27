class DropEvents < ActiveRecord::Migration
  def up
    drop_table :events
  end

  def down
    create_table :events do |t|
      t.string :name

      t.timestamps
    end
  end
end
