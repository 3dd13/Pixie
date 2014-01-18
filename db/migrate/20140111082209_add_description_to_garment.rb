class AddDescriptionToGarment < ActiveRecord::Migration
  def change
  	add_column :garments, :description, :text
  end
end
