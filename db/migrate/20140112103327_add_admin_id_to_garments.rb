class AddAdminIdToGarments < ActiveRecord::Migration
  def change
    add_column :garments, :admin_id, :integer
    add_index :garments, :admin_id
  end
end
