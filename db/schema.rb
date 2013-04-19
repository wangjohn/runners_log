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

ActiveRecord::Schema.define(version: 20130419204218) do

  create_table "email_addresses", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "email_tasks", force: true do |t|
    t.text     "title"
    t.text     "body"
    t.text     "from"
    t.text     "to"
    t.text     "cc"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "priorities", force: true do |t|
    t.integer  "score"
    t.integer  "email_task_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "run_histories", force: true do |t|
    t.float    "avg_duration"
    t.float    "avg_distance"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "runner_id"
  end

  create_table "run_infos", force: true do |t|
    t.boolean  "windy"
    t.boolean  "treadmill"
    t.boolean  "hilly"
    t.boolean  "rainy"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "run_id"
  end

  create_table "runners", force: true do |t|
    t.string   "email",                              default: "", null: false
    t.string   "encrypted_password",     limit: 128, default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "runners", ["email"], name: "index_runners_on_email", unique: true, using: :btree
  add_index "runners", ["reset_password_token"], name: "index_runners_on_reset_password_token", unique: true, using: :btree

  create_table "runs", force: true do |t|
    t.float    "distance"
    t.float    "duration"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "runner_id"
  end

  create_table "users", force: true do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
