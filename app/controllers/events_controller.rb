class EventsController < ApplicationController
  def index
    current_user = User.find session[:user_id]
    @events = current_user.events
  end

  def new
    @event = Event.new
  end

  def create
    event = Event.create event_params
    place = Place.find params[:place_id]
    event.place_id = place.id
    event.save
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

  def add_place
   event = Event.find params[:id]
   place = Place.find params[:place_id]
   event.places << place
   redirect_to event
 end

  def destroy
    event = Event.find params[:id]
    event.destroy
    redirect_to event
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :user_id, :date, :place_id)
  end
end
