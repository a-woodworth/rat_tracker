Rails.application.routes.draw do

get '/',                    :controller => 'sightings', :action => 'home'

#Create

get '/sightings/new',       :controller => 'sightings', :action => 'new',    :as => 'new_sighting'
get '/sightings/confirm',   :controller => 'sightings', :action => 'confirm',:as => 'confirm_sighting'
post '/sightings',          :controller => 'sightings', :action => 'create', :as => 'sightings'

#Read
get '/sightings/complete',  :controller => 'sightings', :action => 'complete',   :as => 'complete'
get '/sightings/map',       :controller => 'sightings', :action => 'map',       :as => 'map'
get '/sightings',           :controller => 'sightings', :action => 'index'
get '/sightings/:id',       :controller => 'sightings', :action => 'show',       :as => 'sighting'

end
