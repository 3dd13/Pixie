class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :user_email
      t.string :title
      t.string :topic
      t.text :content
      t.integer :message_id
      t.integer :admin_id

      t.timestamps
    end
    add_index :messages, :message_id
    add_index :messages, :admin_id
  end
end
