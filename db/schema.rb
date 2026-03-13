# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.


ActiveRecord::Schema[8.0].define(version: 2026_03_04_141024) do
  
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "description"
    t.string "name"
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "salary_max"
    t.decimal "salary_min"
    t.bigint "locales_id"
    t.index ["category_id"], name: "index_jobs_on_category_id"
    t.index ["locales_id"], name: "index_jobs_on_locales_id"
  end

  create_table "locales", force: :cascade do |t|
    t.string "locale"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "state"
    t.string "city"
  end

  create_table "locales", force: :cascade do |t|
    t.string "locale"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "state"
    t.string "city"
    t.string "neighbourhood"
  end

  add_foreign_key "jobs", "categories"
  add_foreign_key "jobs", "locales", column: "locales_id"
end
