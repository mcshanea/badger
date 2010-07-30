class CreateEntitlements < ActiveRecord::Migration
  def self.up
    create_table :entitlements do |t|
      t.integer :badge_id
      t.string :type
      t.integer :free_bets
      t.float :value

      t.timestamps
    end
  end

  def self.down
    drop_table :entitlements
  end
end
