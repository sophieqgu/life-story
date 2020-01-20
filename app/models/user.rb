class User < ActiveRecord::Base 
  has_many :user_stories
  has_many :stories, through: :user_stories
  has_many :categories, through: :stories 
  
  has_secure_password
end 