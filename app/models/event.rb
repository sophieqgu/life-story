class Events < ActiveRecord::Base 
  belongs_to :category
  has_many :user_events
  has_many :users, through: :user_events
end 