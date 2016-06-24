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

ActiveRecord::Schema.define(version: 20160624155504) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "finalgroups", force: :cascade do |t|
    t.integer  "startup_id"
    t.integer  "finalposition_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.boolean  "iswinner"
  end

  add_index "finalgroups", ["finalposition_id"], name: "index_finalgroups_on_finalposition_id", using: :btree
  add_index "finalgroups", ["startup_id"], name: "index_finalgroups_on_startup_id", using: :btree

  create_table "finalpositions", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "participants", force: :cascade do |t|
    t.string   "name"
    t.text     "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "qualificationgroups", force: :cascade do |t|
    t.integer  "startup_id"
    t.integer  "qualificationposition_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "qualificationgroups", ["qualificationposition_id"], name: "index_qualificationgroups_on_qualificationposition_id", using: :btree
  add_index "qualificationgroups", ["startup_id"], name: "index_qualificationgroups_on_startup_id", using: :btree

  create_table "qualificationpositions", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "semifinalgroups", force: :cascade do |t|
    t.integer  "startup_id"
    t.integer  "semifinalposition_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "semifinalgroups", ["semifinalposition_id"], name: "index_semifinalgroups_on_semifinalposition_id", using: :btree
  add_index "semifinalgroups", ["startup_id"], name: "index_semifinalgroups_on_startup_id", using: :btree

  create_table "semifinalpositions", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "startupparticipants", force: :cascade do |t|
    t.integer  "startup_id"
    t.integer  "participant_id"
    t.text     "role"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "startupparticipants", ["participant_id"], name: "index_startupparticipants_on_participant_id", using: :btree
  add_index "startupparticipants", ["startup_id"], name: "index_startupparticipants_on_startup_id", using: :btree

  create_table "startups", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "track_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  add_index "startups", ["track_id"], name: "index_startups_on_track_id", using: :btree

  create_table "tracks", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "finalgroups", "finalpositions"
  add_foreign_key "finalgroups", "startups"
  add_foreign_key "qualificationgroups", "qualificationpositions"
  add_foreign_key "qualificationgroups", "startups"
  add_foreign_key "semifinalgroups", "semifinalpositions"
  add_foreign_key "semifinalgroups", "startups"
  add_foreign_key "startupparticipants", "participants"
  add_foreign_key "startupparticipants", "startups"
  add_foreign_key "startups", "tracks"
end
