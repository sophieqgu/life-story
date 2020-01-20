class CreateEvents < ActiveRecord::Migration
  def change
    create_table :categories do |c|
      c.string :name
    end 
  end
end
