class EventController < ApplicationController
  
  get '/events' do 
    erb :'events/events'
  end 

end 
