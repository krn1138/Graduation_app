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

ActiveRecord::Schema.define(version: 2021_03_30_060433) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hostels", force: :cascade do |t|
    t.string "name", null: false
    t.string "address", null: false
    t.integer "kind", null: false
    t.integer "walk_city_time"
    t.float "price", null: false
    t.string "image"
    t.string "phone_number", null: false
    t.text "details", null: false
    t.string "country", null: false
    t.integer "capacity"
    t.float "latitude"
    t.float "longitude"
    t.text "around_information"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "country"], name: "index_hostels_on_name_and_country"
  end

end