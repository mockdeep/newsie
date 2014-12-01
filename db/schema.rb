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

ActiveRecord::Schema.define(version: 20141201002335) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "feed_items", force: true do |t|
    t.string   "title",        null: false
    t.string   "permalink",    null: false
    t.text     "body"
    t.integer  "feed_id",      null: false
    t.datetime "published_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "feed_items", ["feed_id"], name: "index_feed_items_on_feed_id", using: :btree

  create_table "feeds", force: true do |t|
    t.string   "name",            null: false
    t.string   "url",             null: false
    t.datetime "last_fetched_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "feeds", ["url"], name: "index_feeds_on_url", unique: true, using: :btree

  create_table "subscriptions", force: true do |t|
    t.integer  "user_id",    null: false
    t.integer  "feed_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subscriptions", ["feed_id", "user_id"], name: "index_subscriptions_on_feed_id_and_user_id", unique: true, using: :btree
  add_index "subscriptions", ["feed_id"], name: "index_subscriptions_on_feed_id", using: :btree
  add_index "subscriptions", ["user_id"], name: "index_subscriptions_on_user_id", using: :btree

  create_table "user_feed_items", force: true do |t|
    t.integer  "user_id",      null: false
    t.integer  "feed_item_id", null: false
    t.datetime "read_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_feed_items", ["feed_item_id", "user_id"], name: "index_user_feed_items_on_feed_item_id_and_user_id", unique: true, using: :btree
  add_index "user_feed_items", ["feed_item_id"], name: "index_user_feed_items_on_feed_item_id", using: :btree
  add_index "user_feed_items", ["user_id"], name: "index_user_feed_items_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree

  add_foreign_key "feed_items", "feeds", name: "feed_items_feed_id_fk"

  add_foreign_key "subscriptions", "feeds", name: "subscriptions_feed_id_fk"
  add_foreign_key "subscriptions", "users", name: "subscriptions_user_id_fk"

  add_foreign_key "user_feed_items", "feed_items", name: "user_feed_items_feed_item_id_fk"
  add_foreign_key "user_feed_items", "users", name: "user_feed_items_user_id_fk"

end
