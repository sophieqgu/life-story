class StoryController < ApplicationController
  
  get '/new' do 
    if logged_in?
      erb :'stories/new'
    else 
      flash[:error] = "You must log in to open Life Story."
      redirect '/'
    end 
  end 

end 
