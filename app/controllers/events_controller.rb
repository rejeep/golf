class EventsController < ApplicationController
  def index
    @events = Event.order('start_date DESC')
  end
  
  def show
    @event = Event.find(params[:id])
  end
end
