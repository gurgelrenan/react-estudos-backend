class EventsController < ApplicationController
  def index
    @events = Event.order(:start_datetime)
    render json: @events
  end

  def create
    @event = current_user.events.new(event_params)
    if @event.save
      render json: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end
  
  private

  def event_params
    params.require(:event).permit(:title, :start_datetime, :location)
  end
  
end
