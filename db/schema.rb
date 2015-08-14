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

ActiveRecord::Schema.define(version: 20150813203822) do

  create_table "companionships", force: :cascade do |t|
    t.integer "companion_one_id"
    t.integer "companion_two_id"
  end

  create_table "families", force: :cascade do |t|
    t.string "surname"
  end

  create_table "home_teachers", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.integer  "companion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "home_teaching_assignments", force: :cascade do |t|
    t.integer "companionship_id"
    t.integer "family_id"
  end

  create_table "members", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "companion_id"
    t.integer  "family_id"
    t.string   "gender"
    t.integer  "age"
    t.integer  "companionship_id"
  end

end
