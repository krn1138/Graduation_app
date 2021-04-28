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

ActiveRecord::Schema.define(version: 2021_04_09_054711) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "guests", force: :cascade do |t|
    t.string "address"
    t.string "phone_number"
    t.integer "gender"
    t.string "country"
    t.float "latitude"
    t.float "longitude"
    t.string "image"
    t.string "birthday"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_guests_on_user_id"
  end

  create_table "hostels", force: :cascade do |t|
    t.string "name", null: false
    t.string "address"
    t.integer "kind"
    t.string "walk_city_time"
    t.float "price"
    t.string "images", default: [], array: true
    t.string "phone_number"
    t.text "details"
    t.string "country"
    t.string "capacity"
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
    t.string "birthday"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_hosts_on_user_id"
  end

  create_table "message_rooms", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "recipient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipient_id"], name: "index_message_rooms_on_recipient_id"
    t.index ["sender_id", "recipient_id"], name: "index_message_rooms_on_sender_id_and_recipient_id", unique: true
    t.index ["sender_id"], name: "index_message_rooms_on_sender_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.bigint "message_room_id"
    t.bigint "user_id"
    t.boolean "read", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["message_room_id"], name: "index_messages_on_message_room_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "role", default: 0
    t.string "name", null: false
    t.string "image"
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
  add_foreign_key "messages", "message_rooms"
  add_foreign_key "messages", "users"
end
