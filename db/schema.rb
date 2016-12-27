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

ActiveRecord::Schema.define(version: 20161227210423) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ninjas", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "skills", force: :cascade do |t|
    t.integer  "ninja_id"
    t.integer  "position"
    t.string   "name"
    t.string   "description"
    t.integer  "cooldown"
    t.integer  "taijutsu_cost"
    t.integer  "bloodline_cost"
    t.integer  "ninjutsu_cost"
    t.integer  "genjutsu_cost"
    t.boolean  "alternates"
    t.text     "classes",        default: [],              array: true
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["ninja_id"], name: "index_skills_on_ninja_id", using: :btree
  end

end
