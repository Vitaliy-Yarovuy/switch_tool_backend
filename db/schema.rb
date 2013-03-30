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

ActiveRecord::Schema.define(:version => 20130330204951) do

  create_table "data_base_snapshots", :force => true do |t|
    t.string   "notice"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "snap_file"
  end

  create_table "medicaments", :force => true do |t|
    t.string   "name"
    t.integer  "drug_form"
    t.string   "small_description"
    t.text     "big_description"
    t.text     "medical_evidence"
    t.text     "dosage_form"
    t.text     "trade_names"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
    t.boolean  "is_allowed_with_other", :default => false
    t.integer  "mg_dose"
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 5
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "replacement_recommendations", :force => true do |t|
    t.integer  "medicament_id_from"
    t.integer  "medicament_id_to"
    t.boolean  "is_exchangeable"
    t.text     "description"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "symptom_photos", :force => true do |t|
    t.integer "symptom_id"
    t.string  "style"
    t.text    "file_contents"
  end

  create_table "symptoms", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "treatment_groups", :force => true do |t|
    t.string   "name"
    t.integer  "symptom_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "treatments", :force => true do |t|
    t.integer  "treatment_group_id"
    t.string   "name"
    t.integer  "medicament_id"
    t.boolean  "is_more_than_21"
    t.integer  "dose_by_taking"
    t.integer  "admission_per_day"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

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
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
