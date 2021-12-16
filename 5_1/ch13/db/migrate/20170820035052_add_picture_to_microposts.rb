class AddPictureToMicroposts < ActiveRecord::Migration[5.1]
  def change
    add_column :microposts, :picture, :string
  end
end
