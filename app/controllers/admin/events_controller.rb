class Admin::EventsController < InheritedResources::Base
  require_admin

  def create
    @event = Event.new(params[:event])
    @event.user = current_user

    super { admin_event_path(@event) }
  end
end
