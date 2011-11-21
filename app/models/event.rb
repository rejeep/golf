class Event < ActiveRecord::Base
  has_many :photos
  has_many :videos
  
  def random_photos
    photos.random(3)
  end
  
  def random_videos
    videos.random(3)
  end
end
