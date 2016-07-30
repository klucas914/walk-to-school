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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160730113224) do

  create_table "archives", force: :cascade do |t|
    t.string   "child_name"
    t.string   "starting_point"
    t.string   "destination"
    t.datetime "departure_time"
    t.datetime "arrival_time"
    t.boolean  "trip_complete"
    t.integer  "trip_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "archives", ["trip_id"], name: "index_archives_on_trip_id"

  create_table "children", force: :cascade do |t|
    t.string   "child_name"
    t.date     "child_birthdate"
    t.binary   "child_image"
    t.integer  "trip_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "location_id"
  end

  add_index "children", ["location_id"], name: "index_children_on_location_id"
  add_index "children", ["trip_id"], name: "index_children_on_trip_id"

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "trips_id"
    t.integer  "children_id"
  end

  add_index "locations", ["children_id"], name: "index_locations_on_children_id"
  add_index "locations", ["trips_id"], name: "index_locations_on_trips_id"

  create_table "trips", force: :cascade do |t|
    t.string   "child_name"
    t.string   "starting_point"
    t.string   "destination"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.datetime "departure_time"
    t.datetime "arrival_time"
    t.boolean  "trip_complete"
    t.integer  "child_id"
    t.integer  "location_id"
  end

  add_index "trips", ["child_id"], name: "index_trips_on_child_id"
  add_index "trips", ["location_id"], name: "index_trips_on_location_id"

end
