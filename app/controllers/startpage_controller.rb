class StartpageController < ApplicationController
  def index
    @slider_photos = SliderPhoto.all
    @blog_posts = BlogPost.limit(2)
  end
end
