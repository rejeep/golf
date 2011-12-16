class Photo < ActiveRecord::Base
  include Taggable
  
  belongs_to :user

  validates :description, :image, :presence => true

  mount_uploader :image, ImageUploader
end
