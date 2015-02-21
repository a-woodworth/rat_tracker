class SightingsController < ApplicationController

  def new
      @sighting = Sighting.new

    end

    def confirm
      @sighting = Sighting.new
      @sighting.location = params[:location]
      @sighting.search = params[:search]
      @sighting.bait = params[:bait]
      @sighting.city_record_ok = params[:city_record_ok]

    end

    def create
     @sighting = Sighting.new
     @sighting.location = params[:location]
     @sighting.search = params[:search]
     @sighting.bait = params[:bait]
     @sighting.description = params[:description]
     @sighting.first_name = params[:first_name]
     @sighting.last_name = params[:last_name]
     @sighting.email = params[:email]
     @sighting.mobile = params[:mobile]
     @sighting.city_record_ok = params[:city_record_ok]
     @sighting.latitude = params[:latitude]
     @sighting.longitude = params[:longitude]

     if @sighting.save
      redirect_to complete_url, :notice => "Sighting created successfully."
    else
      render 'confirm'
    end
  end
  def home
  end

  def map
  end

  def complete
  end

  def index
  end

  def show
  end

end
