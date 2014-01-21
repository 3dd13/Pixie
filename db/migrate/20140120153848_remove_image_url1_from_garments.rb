class RemoveImageUrl1FromGarments < ActiveRecord::Migration
  def change
    remove_column :garments, :image_url_1, :string
    remove_column :garments, :image_url_2, :string
    remove_column :garments, :image_url_3, :string
    remove_column :garments, :image_url_4, :string
end
end
