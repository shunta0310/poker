class CreateTweets < ActiveRecord::Migration[7.2]
  def change
    create_table :tweets do |t|
      t.string :shurui
      t.string :rate
      t.integer :ninnzuu
      t.string :position
      t.string :myhand
      t.string :suit
      t.string :mark
      t.string :frop1
      t.string :frop2
      t.string :frop3
      t.string :turn
      t.string :river
      t.string :turn1
      t.string :turn2
      t.string :turn3
      t.string :turn4
      t.string :action1
      t.string :action2
      t.string :action3
      t.string :action4
      t.string :action5
      t.string :action6
      t.string :action7
      t.string :action8
      t.string :action9
      t.string :action10
      t.timestamps
    end
  end
end
