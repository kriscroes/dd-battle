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

ActiveRecord::Schema.define(version: 20160419203622) do

  create_table "final_positions", force: :cascade do |t|
    t.text     "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "finalgroups", force: :cascade do |t|
    t.integer  "startup_id"
    t.integer  "finalposition_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.boolean  "iswinner"
  end

  add_index "finalgroups", ["finalposition_id"], name: "index_finalgroups_on_finalposition_id"
  add_index "finalgroups", ["startup_id"], name: "index_finalgroups_on_startup_id"

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

  create_table "qualification_positions", force: :cascade do |t|
    t.text     "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "qualificationgroups", force: :cascade do |t|
    t.integer  "startup_id"
    t.integer  "qualificationposition_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "qualificationgroups", ["qualificationposition_id"], name: "index_qualificationgroups_on_qualificationposition_id"
  add_index "qualificationgroups", ["startup_id"], name: "index_qualificationgroups_on_startup_id"

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

  add_index "semifinalgroups", ["semifinalposition_id"], name: "index_semifinalgroups_on_semifinalposition_id"
  add_index "semifinalgroups", ["startup_id"], name: "index_semifinalgroups_on_startup_id"

  create_table "semifinalpositions", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "semifinals", force: :cascade do |t|
    t.text     "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "startup_finals", force: :cascade do |t|
    t.integer  "final_positions_id"
    t.integer  "startup_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "startup_finals", ["final_positions_id"], name: "index_startup_finals_on_final_positions_id"
  add_index "startup_finals", ["startup_id"], name: "index_startup_finals_on_startup_id"

  create_table "startup_qualifications", force: :cascade do |t|
    t.integer  "qualification_positions_id"
    t.integer  "startup_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "startup_qualifications", ["qualification_positions_id"], name: "index_startup_qualifications_on_qualification_positions_id"
  add_index "startup_qualifications", ["startup_id"], name: "index_startup_qualifications_on_startup_id"

  create_table "startup_semifinals", force: :cascade do |t|
    t.integer  "semifinal_id"
    t.integer  "startup_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "startup_semifinals", ["semifinal_id"], name: "index_startup_semifinals_on_semifinal_id"
  add_index "startup_semifinals", ["startup_id"], name: "index_startup_semifinals_on_startup_id"

  create_table "startup_winners", force: :cascade do |t|
    t.integer  "winner_id"
    t.integer  "startup_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "startup_winners", ["startup_id"], name: "index_startup_winners_on_startup_id"
  add_index "startup_winners", ["winner_id"], name: "index_startup_winners_on_winner_id"

  create_table "startupparticipants", force: :cascade do |t|
    t.integer  "startup_id"
    t.integer  "participant_id"
    t.text     "role"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "startupparticipants", ["participant_id"], name: "index_startupparticipants_on_participant_id"
  add_index "startupparticipants", ["startup_id"], name: "index_startupparticipants_on_startup_id"

  create_table "startups", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "track_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "startups", ["track_id"], name: "index_startups_on_track_id"

  create_table "tracks", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "winners", force: :cascade do |t|
    t.text     "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
