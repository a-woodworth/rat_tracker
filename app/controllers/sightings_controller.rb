class SightingsController < ApplicationController

  def home

  end
  def map

  end

  def new
    @sighting = Sighting.new

  end

  def confirm
    @sighting = Sighting.new
    @sighting.location = params[:location]
    @sighting.search = params[:search]
    @sighting.bait = params[:bait]
    @sighting.public = params[:public]

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
   @sighting.public = params[:public]

   if @sighting.save
    redirect_to complete_url, :notice => "Sighting created successfully."
  else
    render 'confirm'
  end
end

def complete

end
def index

end

def show

end
end
