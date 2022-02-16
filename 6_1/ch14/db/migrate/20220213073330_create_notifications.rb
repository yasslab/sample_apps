class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.integer :to_user_id
      t.integer :from_user_id
      t.integer :action, null: false
      t.boolean :checked, default: false

      t.timestamps
    end

    add_index :notifications, :to_user_id
    add_index :notifications, :from_user_id
  end
end