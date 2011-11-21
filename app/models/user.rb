class User < ActiveRecord::Base
  devise :database_authenticatable, :rpx_connectable
  
  def name?
    first_name.present? && last_name.present?
  end
end
