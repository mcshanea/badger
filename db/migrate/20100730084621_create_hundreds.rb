class CreateHundreds < ActiveRecord::Migration
  def self.up
    create_table :hundreds do |t|
      t.string :title
      t.integer :players
      t.datetime :end_time
      t.integer :winning_number
      t.float :cost_per_bet
      t.boolean :ended

      t.timestamps
    end
  end

  def self.down
    drop_table :hundreds
  end
end
