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

ActiveRecord::Schema.define(:version => 20120916163747) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cities_surveys", :id => false, :force => true do |t|
    t.integer "city_id",   :null => false
    t.integer "survey_id", :null => false
  end

  add_index "cities_surveys", ["city_id", "survey_id"], :name => "index_cities_surveys_on_city_id_and_survey_id", :unique => true

  create_table "expenditures", :force => true do |t|
    t.integer  "category_id"
    t.integer  "year"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "name"
    t.integer  "city_id"
  end

  add_index "expenditures", ["category_id"], :name => "index_expenditures_on_category_id"

  create_table "instances", :force => true do |t|
    t.integer  "expenditure_id"
    t.integer  "amount"
    t.integer  "year"
    t.integer  "city_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "instances", ["city_id"], :name => "index_instances_on_city_id"
  add_index "instances", ["expenditure_id"], :name => "index_instances_on_expenditure_id"

  create_table "models", :force => true do |t|
    t.integer  "city_id"
    t.integer  "income_id"
    t.integer  "year"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.text     "data"
  end

  add_index "models", ["city_id"], :name => "index_models_on_city_id"
  add_index "models", ["income_id"], :name => "index_models_on_income_id"

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

  create_table "regions", :force => true do |t|
    t.string   "name"
    t.integer  "city_id"
    t.integer  "year"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.text     "shape_data"
  end

  add_index "regions", ["city_id"], :name => "index_regions_on_city_id"

  create_table "surveys", :force => true do |t|
    t.string   "question"
    t.string   "response1"
    t.string   "response2"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "category_1"
    t.integer  "category_2"
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
