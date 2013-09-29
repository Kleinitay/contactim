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

ActiveRecord::Schema.define(:version => 20130425072404) do

  create_table "field_types", :force => true do |t|
    t.string   "name"
    t.string   "defaultVal"
    t.string   "validation"
    t.integer  "min_length"
    t.integer  "max_length"
    t.boolean  "user_generated"
    t.integer  "user_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "record_fields", :force => true do |t|
    t.integer  "record_id"
    t.integer  "field_type_id"
    t.string   "data"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "sheet_field_types", :force => true do |t|
    t.integer  "sheet_id"
    t.integer  "field_type_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "sheet_field_types", ["sheet_id", "field_type_id"], :name => "index_sheet_field_types_on_sheet_id_and_field_type_id", :unique => true

  create_table "sheet_records", :force => true do |t|
    t.integer  "sheet_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sheet_records", ["sheet_id"], :name => "index_sheet_records_on_sheet_id"

  create_table "sheets", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "description"
    t.boolean  "closed"
    t.integer  "visibility"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "user_fields", :force => true do |t|
    t.integer  "user_id"
    t.integer  "field_type_id"
    t.string   "data"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "user_fields", ["user_id", "field_type_id"], :name => "index_user_fields_on_user_id_and_field_type_id", :unique => true

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
