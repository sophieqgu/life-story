require_relative './concerns/slugifiable.rb'

class User < ActiveRecord::Base 
  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods
  
  has_many :user_stories
  has_many :stories, through: :user_stories
  has_many :categories, through: :stories 
  
  has_secure_password
end 