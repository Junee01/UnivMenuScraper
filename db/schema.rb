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

ActiveRecord::Schema.define(version: 20160625134315) do

  create_table "banner", force: :cascade do |t|
    t.integer "univ_id",  limit: 4
    t.text    "filename", limit: 65535
    t.text    "link",     limit: 65535, null: false
  end

  add_index "banner", ["univ_id"], name: "univ_id", using: :btree

  create_table "diet", force: :cascade do |t|
    t.integer "univ_id",  limit: 4,                           null: false
    t.string  "name",     limit: 32,    default: "",          null: false
    t.string  "location", limit: 32,    default: "",          null: false
    t.date    "date",                                         null: false
    t.string  "time",     limit: 9,     default: "breakfast", null: false
    t.text    "diet",     limit: 65535
    t.text    "extra",    limit: 65535
  end

  add_index "diet", ["univ_id", "name", "date", "time"], name: "univ_id", unique: true, using: :btree

  create_table "univ", force: :cascade do |t|
    t.string "name",  limit: 32, default: "", null: false
    t.string "alias", limit: 32, default: "", null: false
  end

  create_table "user", force: :cascade do |t|
    t.string "email",    limit: 255, null: false
    t.string "password", limit: 60,  null: false
  end

  add_index "user", ["email"], name: "email_UNIQUE", unique: true, using: :btree

  create_table "user_univ", force: :cascade do |t|
    t.integer "user_id", limit: 4, null: false
    t.integer "univ_id", limit: 4, null: false
  end

  add_index "user_univ", ["univ_id"], name: "asd_idx", using: :btree
  add_index "user_univ", ["user_id"], name: "user_id_idx", using: :btree

  add_foreign_key "banner", "univ", name: "banner_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "diet", "univ", name: "diet_ibfk_1", on_update: :cascade
  add_foreign_key "user_univ", "univ", name: "fk_univ_id", on_update: :cascade, on_delete: :cascade
  add_foreign_key "user_univ", "user", name: "fk_user_id", on_update: :cascade, on_delete: :cascade
end
