class StoryController < ApplicationController
  
  get '/stories' do 
    if logged_in?
      erb :'stories/stories'
    else 
      redirect '/'
    end 
    
  end 

end 
