class CreateCategories < ActiveRecord::Migration
  def change
    create_table :events do |e|
      e.text :summary 
      e.date :date 
      e.text :description
      e.integer :category_id 
    end 
  end
end
