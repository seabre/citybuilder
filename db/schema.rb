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

ActiveRecord::Schema.define(:version => 20120915221437) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.integer  "expenditure_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "categories", ["expenditure_id"], :name => "index_categories_on_expenditure_id"

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.integer  "region_id"
    t.integer  "instance_id"
    t.integer  "expenditure_id"
    t.integer  "model_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "cities", ["expenditure_id"], :name => "index_cities_on_expenditure_id"
  add_index "cities", ["instance_id"], :name => "index_cities_on_instance_id"
  add_index "cities", ["model_id"], :name => "index_cities_on_model_id"
  add_index "cities", ["region_id"], :name => "index_cities_on_region_id"

  create_table "expenditures", :force => true do |t|
    t.integer  "category_id"
    t.integer  "year"
    t.integer  "instance_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "expenditures", ["category_id"], :name => "index_expenditures_on_category_id"
  add_index "expenditures", ["instance_id"], :name => "index_expenditures_on_instance_id"

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
  end

  add_index "models", ["city_id"], :name => "index_models_on_city_id"
  add_index "models", ["income_id"], :name => "index_models_on_income_id"

  create_table "regions", :force => true do |t|
    t.string   "name"
    t.integer  "city_id"
    t.integer  "year"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "regions", ["city_id"], :name => "index_regions_on_city_id"

end
