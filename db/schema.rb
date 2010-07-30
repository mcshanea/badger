# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100730093330) do

  create_table "badges", :force => true do |t|
    t.string   "name"
    t.integer  "points_required"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bets", :force => true do |t|
    t.float    "amount"
    t.integer  "user_id"
    t.integer  "link_id"
    t.string   "game"
    t.string   "guess"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entitlements", :force => true do |t|
    t.integer  "badge_id"
    t.string   "type"
    t.integer  "free_bets"
    t.float    "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hundreds", :force => true do |t|
    t.string   "title"
    t.integer  "players"
    t.datetime "end_time"
    t.integer  "winning_number"
    t.float    "cost_per_bet"
    t.boolean  "ended"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "points_earned"
    t.integer  "badge_id"
    t.integer  "entitlement_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
