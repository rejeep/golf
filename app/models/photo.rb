class Photo < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  belongs_to :user
  belongs_to :event
  
  validates :description, :event, :image, :presence => true
end
