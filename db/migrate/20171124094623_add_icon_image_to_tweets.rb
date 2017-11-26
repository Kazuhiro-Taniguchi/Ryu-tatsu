class AddIconImageToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :icon_image, :string
  end
end
