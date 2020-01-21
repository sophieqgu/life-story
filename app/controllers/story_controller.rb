class StoryController < ApplicationController
  
  get '/new' do 
    if logged_in?
      erb :'stories/new'
    else 
      flash[:error] = "You must log in to start your life story."
      redirect '/'
    end 
  end 

end 
