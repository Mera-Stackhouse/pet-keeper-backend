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

ActiveRecord::Schema.define(version: 2019_05_24_213507) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.string "species"
    t.date "birthdate"
    t.string "gender"
    t.string "breed"
    t.string "img_url"
    t.string "habits"
    t.string "vaccination_dates", default: [], array: true
    t.string "medications", default: [], array: true
    t.string "appointments", default: [], array: true
    t.string "groomings", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pets_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "pet_id", null: false
  end

  create_table "pets_vets", id: false, force: :cascade do |t|
    t.bigint "pet_id", null: false
    t.bigint "vet_id", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "avatar_url"
    t.string "mobile"
    t.string "email"
    t.string "neighborhood"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vets", force: :cascade do |t|
    t.string "name"
    t.string "clinic"
    t.string "phone"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
