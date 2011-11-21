class User < ActiveRecord::Base
  devise :database_authenticatable, :rpx_connectable
end
