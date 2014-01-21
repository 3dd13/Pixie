class AddImageUrlToGarments < ActiveRecord::Migration
  def change
    add_column :garments, :image_url_1, :string
    add_column :garments, :image_url_2, :string
    add_column :garments, :image_url_3, :string
    add_column :garments, :image_url_4, :string
  end
end
