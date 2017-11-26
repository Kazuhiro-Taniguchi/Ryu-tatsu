class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
        t.string        :name
        t.string        :country
        t.text          :genre
        t.string        :cost
        t.string        :term
        t.text        :text
        t.timestamps
    end
  end
end
