class SightingsController < ApplicationController

  # def home
  # end

  def index
  end

  def show
  end

  def new
    @sighting = Sighting.new
  end

  def create
     @sighting = Sighting.new
     @sighting.latitude = params[:latitude]
     @sighting.longitude = params[:longitude]

    if @sighting.save
      redirect_to edit_sighting_path(@sighting)
    else
      render 'confirm'
    end
  end

  def edit
    @sighting = Sighting.find(params[:id])
  end

  def update
  end

end
