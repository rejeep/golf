class Photo < ActiveRecord::Base
  belongs_to :user
  
  validates :description, :image, :presence => true
  
  mount_uploader :image, ImageUploader
  
  acts_as_taggable
end
