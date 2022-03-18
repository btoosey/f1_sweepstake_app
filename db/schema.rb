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

ActiveRecord::Schema.define(version: 2022_03_07_231157) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "choices", force: :cascade do |t|
    t.bigint "league_id", null: false
    t.bigint "result_id", null: false
    t.boolean "submitted"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "open"
    t.index ["league_id"], name: "index_choices_on_league_id"
    t.index ["result_id"], name: "index_choices_on_result_id"
  end

  create_table "circuits", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "constructors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.integer "number"
    t.string "forename"
    t.string "surname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "code", limit: 3
  end

  create_table "leagues", force: :cascade do |t|
    t.string "name"
    t.integer "season"
    t.integer "length"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_leagues_on_user_id"
  end

  create_table "race_drivers", force: :cascade do |t|
    t.bigint "race_id", null: false
    t.bigint "team_driver_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["race_id"], name: "index_race_drivers_on_race_id"
    t.index ["team_driver_id"], name: "index_race_drivers_on_team_driver_id"
  end

  create_table "races", force: :cascade do |t|
    t.bigint "season_id", null: false
    t.bigint "circuit_id", null: false
    t.integer "round"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "race_date"
    t.index ["circuit_id"], name: "index_races_on_circuit_id"
    t.index ["season_id"], name: "index_races_on_season_id"
  end

  create_table "results", force: :cascade do |t|
    t.integer "position"
    t.integer "points"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "dnf"
    t.boolean "dsq"
    t.bigint "race_driver_id"
    t.index ["race_driver_id"], name: "index_results_on_race_driver_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.integer "year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "team_drivers", force: :cascade do |t|
    t.bigint "constructor_id", null: false
    t.bigint "driver_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["constructor_id"], name: "index_team_drivers_on_constructor_id"
    t.index ["driver_id"], name: "index_team_drivers_on_driver_id"
  end

  create_table "user_leagues", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "league_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["league_id"], name: "index_user_leagues_on_league_id"
    t.index ["user_id"], name: "index_user_leagues_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "choices", "leagues"
  add_foreign_key "choices", "results"
  add_foreign_key "leagues", "users"
  add_foreign_key "race_drivers", "races"
  add_foreign_key "race_drivers", "team_drivers"
  add_foreign_key "races", "circuits"
  add_foreign_key "races", "seasons"
  add_foreign_key "results", "race_drivers"
  add_foreign_key "team_drivers", "constructors"
  add_foreign_key "team_drivers", "drivers"
  add_foreign_key "user_leagues", "leagues"
  add_foreign_key "user_leagues", "users"
end
