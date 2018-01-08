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

ActiveRecord::Schema.define(version: 20180108121045) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "observations", force: :cascade do |t|
    t.string "action_plan"
    t.string "office_observation"
    t.date "office_date"
    t.date "due_date"
    t.string "responsible"
    t.boolean "meet"
    t.string "office_breach"
    t.date "breach_date"
    t.string "term_second"
    t.string "responsible_second"
    t.boolean "meet_second"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "observation_detail"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "commune"
    t.string "origin_visit"
    t.date "date_visit"
    t.string "line"
    t.string "idi"
    t.integer "visit_id"
    t.string "visit_booklet"
    t.string "report_made"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
