class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    event = Event.create event_params
    # raise

    redirect_to event
  end

  def edit
    @event = Event.find params[:id]
  end

  def update
    event = Event.find params[:id]
    event.update event_params
    redirect_to event
  end

  def show
    @event = Event.find params[:id]

  end

  def destroy
    event = Event.find params[:id]
    event.destroy
     #binding.pry
    redirect_to event
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :user_id, :date)
  end
end
