class CreateUserEvents < ActiveRecord::Migration
  def change
    create_table :user_events do |ue|
      ue.integer :user_id
      ue.integer :event_id
    end 
  end
end
