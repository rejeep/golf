class VideosController < ApplicationController
  def index
    @events = Event.all
  end
end
