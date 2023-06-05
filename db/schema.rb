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

ActiveRecord::Schema[7.0].define(version: 2023_06_05_082840) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "days", force: :cascade do |t|
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ear_state"
  end

  create_table "doses", id: false, force: :cascade do |t|
    t.bigint "day_id", null: false
    t.bigint "medicine_id", null: false
    t.index ["day_id", "medicine_id"], name: "index_doses_on_day_id_and_medicine_id"
    t.index ["medicine_id", "day_id"], name: "index_doses_on_medicine_id_and_day_id"
  end

  create_table "food", force: :cascade do |t|
    t.string "name"
    t.string "emoji"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meals", id: false, force: :cascade do |t|
    t.bigint "day_id", null: false
    t.bigint "food_id", null: false
    t.index ["day_id", "food_id"], name: "index_meals_on_day_id_and_food_id"
    t.index ["food_id", "day_id"], name: "index_meals_on_food_id_and_day_id"
  end

  create_table "medicines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scratches", force: :cascade do |t|
    t.bigint "day_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["day_id"], name: "index_scratches_on_day_id"
  end

  add_foreign_key "scratches", "days"
end
