class AddBodyToTweets < ActiveRecord::Migration[7.2]
  def change
    add_column :tweets, :body, :text
  end
end
