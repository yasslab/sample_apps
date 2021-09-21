class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.integer :to_id
      t.string :content
      t.string :url

      t.references :about, polymorphic: true

      t.timestamps
    end
    add_index :notifications, :to_id
  end
end
