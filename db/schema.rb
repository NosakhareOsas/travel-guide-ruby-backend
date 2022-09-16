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

ActiveRecord::Schema.define(version: 2022_09_16_114830) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "minimum_wage"
    t.string "currency"
    t.string "country"
    t.integer "employment_rate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
    t.integer "crime_rate"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "comment"
    t.integer "traffic"
    t.integer "night_life"
    t.integer "friendly_to_foreigner"
    t.integer "places_to_work_from"
    t.integer "quality_of_internet"
    t.integer "quality_of_healthcare"
    t.integer "city_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
