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
    @sighting = Sighting.find(params[:id])

    @sighting.address = params[:address]
#    params[:look_for_rats]
#    params[:bait]
#    params[:city_record_ok]
    @sighting.description = params[:description]
    @sighting.first_name = params[:first_name]
    @sighting.last_name = params[:last_name]
    @sighting.email = params[:email]
    @sighting.mobile = params[:mobile]

    if @sighting.save
      redirect_to sightings_url, :notice => "Rat reported successfully."
    else
      render 'edit'
    end
  end
end
