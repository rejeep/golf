class Event < ActiveRecord::Base
  belongs_to :user
  has_many :photos, :dependent => :destroy
  has_many :videos, :dependent => :destroy

  validates :name, :start_date, :presence => true

  def random_photos
    photos.random(3)
  end

  def random_videos
    videos.random(3)
  end
end
