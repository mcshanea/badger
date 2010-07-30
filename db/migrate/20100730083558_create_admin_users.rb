class CreateAdminUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :login
      t.string :first_name
      t.string :last_name
      t.integer :points_earned
      t.integer :badge_id
      t.integer :entitlement_id

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end