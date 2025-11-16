class AddDetailsToTweets < ActiveRecord::Migration[7.2]
  def change
    change_table :tweets do |t|
      t.string :frop1m
      t.string :frop2m
      t.string :frop3m
      t.string :turnm
      t.string :riverm
    end
  end
end
