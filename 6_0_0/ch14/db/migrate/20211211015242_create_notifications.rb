class CreateNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :notifications do |t|
      t.references :user, null: false, foreign_key: true
      t.bigint :target_id, null: false
      t.integer :event, null: false
      t.boolean :read, null: false, default: false

      t.timestamps
    end
  end
end
