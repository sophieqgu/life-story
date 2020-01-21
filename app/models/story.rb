require_relative './concerns/slugifiable.rb'

class Story < ActiveRecord::Base 
  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods
  
  belongs_to :category
  has_many :user_stories
  has_many :users, through: :user_stories
end 