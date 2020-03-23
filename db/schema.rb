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

ActiveRecord::Schema.define(version: 2020_03_22_214348) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "message_thread_readers", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "message_thread_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["message_thread_id"], name: "index_message_thread_readers_on_message_thread_id"
    t.index ["user_id"], name: "index_message_thread_readers_on_user_id"
  end

  create_table "message_threads", force: :cascade do |t|
    t.string "uuid"
    t.string "name"
    t.boolean "private", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "private_messages", force: :cascade do |t|
    t.string "content"
    t.bigint "user_id"
    t.bigint "message_thread_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["message_thread_id"], name: "index_private_messages_on_message_thread_id"
    t.index ["user_id"], name: "index_private_messages_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "nickname"
    t.string "first_name"
    t.string "last_name"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "message_thread_readers", "message_threads"
  add_foreign_key "message_thread_readers", "users"
  add_foreign_key "private_messages", "message_threads"
  add_foreign_key "private_messages", "users"
  add_foreign_key "profiles", "users"
end
