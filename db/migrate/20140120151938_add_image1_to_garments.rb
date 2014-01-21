class AddImage1ToGarments < ActiveRecord::Migration
  def self.up
  	add_attachment :garments, :image1
  end

  def self.down
  	remove_attachment :garments, :image1
  end
end
