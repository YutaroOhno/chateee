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

ActiveRecord::Schema.define(version: 20160726072351) do

  create_table "chats", force: :cascade do |t|
    t.text     "text",       limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: :cascade do |t|
    t.text     "image",      limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "room_images", force: :cascade do |t|
    t.text     "image",      limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms", force: :cascade do |t|
    t.text     "name",       limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_count", limit: 4
    t.text     "image",      limit: 65535
    t.text     "room_image", limit: 65535
  end

  create_table "users", force: :cascade do |t|
    t.text     "nickname",   limit: 65535
    t.text     "image",      limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "room_id",    limit: 4
  end

end
