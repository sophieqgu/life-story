class UserController < ApplicationController

  get '/signup' do 
    if !logged_in?
      erb :'users/signup'
    else 
      redirect '/'
    end 
  end 
  
  post '/signup' do 
    user = User.create(params)
    flash[:message] = "Signed up successfully. Logging you in.."
    session[:user_id] = user.id 
    redirect '/'
  end  
  
  
end 