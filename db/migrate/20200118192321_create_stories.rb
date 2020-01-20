class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |s|
      s.text :summary 
      s.date :date 
      s.text :description
      s.integer :category_id 
    end 
  end
end
