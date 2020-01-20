class CreateUserStories < ActiveRecord::Migration
  def change
    create_table :user_stories do |ue|
      ue.integer :user_id
      ue.integer :story_id
    end 
  end
end
