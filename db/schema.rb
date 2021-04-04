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

ActiveRecord::Schema.define(version: 2021_04_01_073223) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "guests", force: :cascade do |t|
    t.string "address"
    t.string "phone_number"
    t.integer "gender"
    t.integer "country"
    t.float "latitude"
    t.float "longitude"
    t.string "image"
    t.integer "birthday"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_guests_on_user_id"
  end

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
    t.bigint "host_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["host_id"], name: "index_hostels_on_host_id"
    t.index ["name", "country"], name: "index_hostels_on_name_and_country"
  end

  create_table "hosts", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.text "profile"
    t.string "image"
    t.string "country"
    t.integer "birthday"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_hosts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "role", default: 0
    t.string "name", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "guests", "users"
  add_foreign_key "hostels", "hosts"
  add_foreign_key "hosts", "users"
end
