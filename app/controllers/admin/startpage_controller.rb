class Admin::StartpageController < Admin::ApplicationController
  def index
    @slider_photos, @events, @videos, @photos =
      [SliderPhoto, Event, Video, Photo].map { |model| model.random(6) }
  end
end
