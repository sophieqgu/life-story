class StoryController < ApplicationController
  
  get '/stories' do 
    erb :'stories/stories'
  end 

end 
