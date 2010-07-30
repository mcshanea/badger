class CreateBets < ActiveRecord::Migration
  def self.up
    create_table :bets do |t|
      t.float :amount
      t.integer :user_id
      t.integer :link_id
      t.string :game
      t.string :guess

      t.timestamps
    end
  end

  def self.down
    drop_table :bets
  end
end
