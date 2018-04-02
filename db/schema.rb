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

ActiveRecord::Schema.define(version: 20180330192512) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ducks", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "species"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hunt_duck_counts", force: :cascade do |t|
    t.integer  "hunt_id"
    t.integer  "duck_id"
    t.integer  "drake_count"
    t.integer  "hen_count"
    t.boolean  "is_group"
    t.boolean  "is_individual"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "hunt_partners", force: :cascade do |t|
    t.integer  "hunt_id"
    t.integer  "partner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hunts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "location_id"
    t.date     "date"
    t.string   "description"
    t.integer  "wind_speed"
    t.string   "wind_direction"
    t.integer  "temperature"
    t.string   "weather"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "locations", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "partners", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.string   "session_token"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

end
