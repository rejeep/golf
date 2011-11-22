class Admin::StartpageController < Admin::ApplicationController
  require_admin
  
  def index
    @slider_photos, @events, @videos, @photos, @blog_posts =
      [SliderPhoto, Event, Video, Photo, BlogPost].map { |model| model.random(6) }
  end
end
