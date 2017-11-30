class RemoveIcoImageFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :icon_image, :string
  end
end
