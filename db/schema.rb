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

ActiveRecord::Schema.define(:version => 20130114132320) do

  create_table "cinemas", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "films", :force => true do |t|
    t.string   "name"
    t.integer  "budget"
    t.integer  "year"
    t.string   "country"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "halls", :force => true do |t|
    t.string   "name"
    t.integer  "nor"
    t.integer  "nos"
    t.integer  "cinema_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "halls", ["cinema_id"], :name => "index_halls_on_cinema_id"

  create_table "perfomances", :force => true do |t|
    t.datetime "date"
    t.integer  "film_id"
    t.integer  "hall_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "perfomances", ["film_id"], :name => "index_perfomances_on_film_id"
  add_index "perfomances", ["hall_id"], :name => "index_perfomances_on_hall_id"

  create_table "tickets", :force => true do |t|
    t.integer  "perfomance_id"
    t.integer  "row"
    t.integer  "seat"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "tickets", ["perfomance_id"], :name => "index_tickets_on_perfomance_id"

end
