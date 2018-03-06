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

ActiveRecord::Schema.define(version: 20180306141933) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "meetings", force: :cascade do |t|
    t.string "commune"
    t.text "observation"
    t.date "observation_date"
    t.date "compliance_date"
    t.boolean "meet"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "observations", force: :cascade do |t|
    t.string "action_plan"
    t.string "office_observation"
    t.date "office_date"
    t.date "due_date"
    t.string "responsible"
    t.string "meet"
    t.string "office_breach"
    t.date "breach_date"
    t.string "term_second"
    t.string "responsible_second"
    t.string "meet_second"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "observation_detail"
    t.text "other_background"
    t.string "options"
    t.date "visit_date"
    t.string "visit_booklet"
    t.string "report_made"
    t.date "reunion_date"
    t.string "reunion_place"
    t.string "reunion_commune"
    t.date "technical_date"
    t.string "technical_commune"
  end

  create_table "projects", force: :cascade do |t|
    t.string "idi"
    t.string "name"
    t.string "commune"
    t.string "line"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "status", default: 0
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
