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

ActiveRecord::Schema.define(version: 2018_12_04_195146) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appliances", force: :cascade do |t|
    t.string "name"
    t.integer "load"
    t.integer "duration"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hours", force: :cascade do |t|
    t.string "period"
    t.integer "efficiency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visitor_request_hours", force: :cascade do |t|
    t.bigint "hour_id"
    t.bigint "visitor_request_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hour_id"], name: "index_visitor_request_hours_on_hour_id"
    t.index ["visitor_request_id"], name: "index_visitor_request_hours_on_visitor_request_id"
  end

  create_table "visitor_requests", force: :cascade do |t|
    t.bigint "appliance_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "duration"
    t.index ["appliance_id"], name: "index_visitor_requests_on_appliance_id"
    t.index ["user_id"], name: "index_visitor_requests_on_user_id"
  end

  add_foreign_key "visitor_request_hours", "hours"
  add_foreign_key "visitor_request_hours", "visitor_requests"
  add_foreign_key "visitor_requests", "appliances"
  add_foreign_key "visitor_requests", "users"
end
