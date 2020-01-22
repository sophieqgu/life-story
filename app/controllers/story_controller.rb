class StoryController < ApplicationController
  
  get '/new' do 
    if logged_in?
      erb :'stories/new'
    else 
      flash[:error] = "You must log in to open Life Story."
      redirect '/'
    end 
  end 
  
  
  post '/' do 
    @story = Story.create(summary: params[:summary], date: params[:date], description: params[:description])
    @story.category = Category.find(params[:category])
    @story.users << current_user
    if !params[:users].nil?
      params[:users].each do |user_id|
        @story.users << User.find(user_id)
      end 
    end 
    @story.save
    flash[:success] = "Story published successfully."
    redirect '/'
  end 

end 
