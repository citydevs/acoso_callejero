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

ActiveRecord::Schema.define(version: 20160221203440) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aggressors", force: :cascade do |t|
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bullying_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "calls", force: :cascade do |t|
    t.text     "id_call"
    t.boolean  "is_active"
    t.integer  "id_admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "complaint_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "complaints", force: :cascade do |t|
    t.float    "lat"
    t.float    "lng"
    t.integer  "user_id"
    t.integer  "place_id"
    t.integer  "condition_id"
    t.integer  "complaint_type_id"
    t.integer  "bullying_type_id"
    t.integer  "aggressor_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "complaints", ["aggressor_id"], name: "index_complaints_on_aggressor_id", using: :btree
  add_index "complaints", ["bullying_type_id"], name: "index_complaints_on_bullying_type_id", using: :btree
  add_index "complaints", ["complaint_type_id"], name: "index_complaints_on_complaint_type_id", using: :btree
  add_index "complaints", ["condition_id"], name: "index_complaints_on_condition_id", using: :btree
  add_index "complaints", ["place_id"], name: "index_complaints_on_place_id", using: :btree
  add_index "complaints", ["user_id"], name: "index_complaints_on_user_id", using: :btree

  create_table "conditions", force: :cascade do |t|
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_foreign_key "complaints", "aggressors"
  add_foreign_key "complaints", "bullying_types"
  add_foreign_key "complaints", "complaint_types"
  add_foreign_key "complaints", "conditions"
  add_foreign_key "complaints", "places"
  add_foreign_key "complaints", "users"
end
