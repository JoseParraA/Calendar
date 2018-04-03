class PlacesController < ApplicationController
   def index
    @places = Place.all
  end

  def new
    @place = Place.new
  end

  def create
    place = Place.create place_params
    # raise

    redirect_to place
  end

  def edit
    @place = Place.find params[:id]
  end

  def update
    place = Place.find params[:id]
    place.update place_params
    redirect_to place
  end

  def show
    @place = Place.find params[:id]

  end

  def destroy
    place = Place.find params[:id]
    place.destroy
     #binding.pry
    redirect_to place
  end

  private

  def place_params
    params.require(:place).permit(:name, :facilities, :event_id, :location)
  end
end
