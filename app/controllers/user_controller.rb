class UserController < ApplicationController
  
  get '/signup' do 
    if !logged_in?
      erb :'users/signup'
    else 
      redirect '/'
    end 
  end 
  
  
  post '/signup' do 
    if User.exists?(email: params[:email]) || User.exists?(username: params[:username])
      flash[:error] = "Username or email already exists. Please try another or log in."
      redirect '/signup'
    else 
      user = User.create(params)
      flash[:success] = "Signed up successfully. Logging you in.."
      session[:user_id] = user.id 
      redirect '/'
    end 
  end  
  
  
  post '/login' do 
    user = User.find_by(username: params[:username])
    
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id 
      flash[:success] = "Logged in successfully."
      redirect '/'
    else 
      flash[:error] = "Username or password is incorrect. Please try again or create a new account."
      redirect '/signup'
    end 
  end 
  
  
  get '/logout' do 
    if logged_in?
      session.clear
      flash[:success] = "Logged out successfully. Directing you to homepage.."
    end 
    redirect '/'
  end 
  
  
  get '/:slug' do 
    if logged_in?
      @user = User.find_by_slug(params[:slug])
      erb :'stories/show_by_users'
    else 
      flash[:error] = "You must log in to open Life Story."
      redirect '/'
    end 
  end 
  
  
end 