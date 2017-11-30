class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :icon_image, :string
    add_column :users, :country, :string
    add_column :users, :genre, :string
    add_column :users, :term, :string
    add_column :users, :cost, :integer
  end
end
