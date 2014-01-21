class AddImage2ToGarments < ActiveRecord::Migration
  def self.up
  	add_attachment :garments, :image2
  	add_attachment :garments, :image3
  	add_attachment :garments, :image4
  end

  def self.down
  	remove_attachment :garments, :image2
  	remove_attachment :garments, :image3
  	remove_attachment :garments, :image4
  end
end
