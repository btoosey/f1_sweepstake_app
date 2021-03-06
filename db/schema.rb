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

ActiveRecord::Schema[7.0].define(version: 2022_05_13_125747) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "choices", force: :cascade do |t|
    t.boolean "locked"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "open"
    t.bigint "user_league_id", null: false
    t.bigint "race_driver_id", null: false
    t.index ["race_driver_id"], name: "index_choices_on_race_driver_id"
    t.index ["user_league_id"], name: "index_choices_on_user_league_id"
  end

  create_table "circuits", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "constructors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.integer "number"
    t.string "forename"
    t.string "surname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "code", limit: 3
  end

  create_table "league_races", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "league_id", null: false
    t.bigint "race_id", null: false
    t.index ["league_id"], name: "index_league_races_on_league_id"
    t.index ["race_id"], name: "index_league_races_on_race_id"
  end

  create_table "leagues", force: :cascade do |t|
    t.string "name"
    t.integer "length"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "season_id"
    t.boolean "private", default: false
    t.index ["season_id"], name: "index_leagues_on_season_id"
    t.index ["user_id"], name: "index_leagues_on_user_id"
  end

  create_table "race_drivers", force: :cascade do |t|
    t.bigint "race_id", null: false
    t.bigint "team_driver_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["race_id"], name: "index_race_drivers_on_race_id"
    t.index ["team_driver_id"], name: "index_race_drivers_on_team_driver_id"
  end

  create_table "races", force: :cascade do |t|
    t.bigint "season_id", null: false
    t.bigint "circuit_id", null: false
    t.integer "round"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "race_date", precision: nil
    t.index ["circuit_id"], name: "index_races_on_circuit_id"
    t.index ["season_id"], name: "index_races_on_season_id"
  end

  create_table "results", force: :cascade do |t|
    t.integer "position"
    t.integer "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "dnf"
    t.boolean "dsq"
    t.bigint "race_driver_id"
    t.boolean "dns"
    t.index ["race_driver_id"], name: "index_results_on_race_driver_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "team_drivers", force: :cascade do |t|
    t.bigint "constructor_id", null: false
    t.bigint "driver_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["constructor_id"], name: "index_team_drivers_on_constructor_id"
    t.index ["driver_id"], name: "index_team_drivers_on_driver_id"
  end

  create_table "user_leagues", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "league_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["league_id"], name: "index_user_leagues_on_league_id"
    t.index ["user_id"], name: "index_user_leagues_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", default: 0
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "choices", "race_drivers"
  add_foreign_key "choices", "user_leagues"
  add_foreign_key "league_races", "leagues"
  add_foreign_key "league_races", "races"
  add_foreign_key "leagues", "seasons"
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
