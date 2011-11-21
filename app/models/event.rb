class Event < ActiveRecord::Base
  has_many :photos, :dependent => :destroy
  has_many :videos, :dependent => :destroy

  def random_photos
    photos.random(3)
  end

  def random_videos
    videos.random(3)
  end
end
