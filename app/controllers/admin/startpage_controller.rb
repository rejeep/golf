class Admin::StartpageController < Admin::ApplicationController
  require_admin
  
  def index
    @slider_photos, @videos, @photos, @blog_posts =
      [SliderPhoto, Video, Photo, BlogPost].map { |model| model.random(6) }
  end
end
