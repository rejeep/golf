class StartpageController < ApplicationController
  def index
    @slider_photos = SliderPhoto.all
  end
end
