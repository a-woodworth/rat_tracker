Rails.application.routes.draw do

#Home page
get '/',                    :controller => 'sightings', :action => 'home'

#Create

get '/sightings/new',       :controller => 'sightings', :action => 'new',
                            :as => 'new_sighting'

post '/sightings',          :controller => 'sightings', :action => 'create',
                            :as => 'sightings'

#Read
get '/sightings',           :controller => 'sightings', :action => 'index'

get '/sightings/:id',       :controller => 'sightings', :action => 'show',
                            :as => 'sighting'

# Update:
get '/sightings/:id/edit',  :controller => 'sightings', :action => 'edit',
                            :as => 'confirm_sighting'

patch '/sightings/:id',     :controller => 'sightings', :action => 'update'

end
