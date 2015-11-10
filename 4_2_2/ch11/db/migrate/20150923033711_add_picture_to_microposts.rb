class AddPictureToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :picture, :string
  end
end
