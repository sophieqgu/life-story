class Story < ActiveRecord::Base 
  belongs_to :category
  has_many :user_stories
  has_many :users, through: :user_stories
end 