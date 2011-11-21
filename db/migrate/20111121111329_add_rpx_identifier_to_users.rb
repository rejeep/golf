class AddRpxIdentifierToUsers < ActiveRecord::Migration
  def change
    add_column :users, :rpx_identifier, :string
  end
end
