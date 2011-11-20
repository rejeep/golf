class Event < ActiveRecord::Base
  has_many :photos
  has_many :videos
end
