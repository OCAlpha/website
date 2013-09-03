# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130721233406) do

  create_table "account_transfers", :force => true do |t|
    t.integer  "from_account_id", :null => false
    t.integer  "to_account_id",   :null => false
    t.decimal  "amount",          :null => false
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "note"
  end

  create_table "accounts", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "bios", :force => true do |t|
    t.string   "hometown"
    t.string   "favorite_verse"
    t.string   "major"
    t.string   "favorite_breakfast"
    t.string   "favorite_superhero"
    t.string   "grow_up"
    t.string   "catchphrase"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "user_id",            :null => false
  end

  create_table "charge_types", :force => true do |t|
    t.string   "category",   :null => false
    t.decimal  "value",      :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "office_id",  :null => false
  end

  create_table "charges", :force => true do |t|
    t.integer  "user_id",                           :null => false
    t.integer  "charge_type_id",                    :null => false
    t.decimal  "override_value",                    :null => false
    t.boolean  "reconciled",     :default => false, :null => false
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "offices", :force => true do |t|
    t.decimal  "budget",     :default => 0.0, :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.string   "title",                       :null => false
    t.integer  "officer_id",                  :null => false
    t.string   "email",                       :null => false
    t.text     "duties"
    t.string   "nickname"
  end

  create_table "payment_types", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name",       :null => false
  end

  create_table "payments", :force => true do |t|
    t.integer  "paid_by_user_id",                         :null => false
    t.integer  "collected_by_user_id",                    :null => false
    t.decimal  "amount_paid",                             :null => false
    t.string   "notes"
    t.boolean  "reconciled",           :default => false
    t.datetime "created_at",                              :null => false
    t.datetime "updated_at",                              :null => false
    t.integer  "charge_id"
    t.boolean  "confirmed"
  end

  create_table "prayer_followups", :force => true do |t|
    t.integer  "prayer_id"
    t.text     "content",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "prayer_notes", :force => true do |t|
    t.integer  "user_id",                       :null => false
    t.integer  "request_id",                    :null => false
    t.text     "content",                       :null => false
    t.boolean  "anonymous",  :default => false, :null => false
    t.boolean  "public",     :default => false, :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "prayers", :force => true do |t|
    t.integer  "user_id",                       :null => false
    t.text     "request",                       :null => false
    t.boolean  "public",     :default => true,  :null => false
    t.boolean  "anonymous",  :default => false, :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "purchases", :force => true do |t|
    t.integer  "user_id",                              :null => false
    t.decimal  "purchase_amount",                      :null => false
    t.integer  "office_id",                            :null => false
    t.string   "note"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
    t.string   "purchase_location",                    :null => false
    t.boolean  "confirmed",         :default => false, :null => false
  end

  create_table "reconciliations", :force => true do |t|
    t.integer  "account_id", :null => false
    t.decimal  "balance",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "transfers", :force => true do |t|
    t.integer  "officer_user_id",                    :null => false
    t.integer  "account_id",                         :null => false
    t.decimal  "value",                              :null => false
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.boolean  "reconciled",      :default => false, :null => false
    t.string   "note"
  end

  create_table "users", :force => true do |t|
    t.string   "name",                               :null => false
    t.string   "email",                              :null => false
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest",                    :null => false
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
    t.string   "nickname"
    t.text     "story"
    t.string   "phone"
    t.boolean  "email_public"
    t.boolean  "phone_public"
    t.text     "testimonial"
    t.boolean  "active",          :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
