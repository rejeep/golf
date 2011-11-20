class PhotosController < ApplicationController
  def index
    @events = Event.all
  end
end
