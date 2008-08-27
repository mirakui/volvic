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

ActiveRecord::Schema.define(:version => 20080823042319) do

  create_table "entries", :force => true do |t|
    t.integer  "price"
    t.string   "comment"
    t.datetime "checked_at"
    t.integer  "entrycategory_id"
    t.integer  "entrysubject_id"
    t.integer  "user_id"
    t.integer  "from_wallet_id"
    t.integer  "to_wallet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entrycategories", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entrysubjects", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "order"
    t.integer  "entrycategory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
  end

  create_table "wallets", :force => true do |t|
    t.string   "name"
    t.integer  "order"
    t.integer  "ballance"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
