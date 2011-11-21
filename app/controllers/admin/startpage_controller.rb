class Admin::StartpageController < Admin::ApplicationController
  def index
    @slider_photos = SliderPhoto.limit(6)
    @events = Event.limit(6)
    @videos = Video.limit(6)
    @photos = Photo.limit(6)
  end
end
