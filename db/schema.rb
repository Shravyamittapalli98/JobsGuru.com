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

ActiveRecord::Schema.define(version: 2021_12_18_090527) do

  create_table "appforms", force: :cascade do |t|
    t.string "fullname"
    t.string "enteryouremail"
    t.bigint "mobileNo"
    t.string "qualification"
    t.string "current"
    t.string "city"
    t.string "experience"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "applications", force: :cascade do |t|
    t.string "fullname"
    t.string "enter"
    t.string "your"
    t.string "email"
    t.string "mobile"
    t.bigint "no"
    t.string "qualification"
    t.string "current"
    t.string "city"
    t.string "experience"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "apps", force: :cascade do |t|
    t.string "fullname"
    t.string "enteryouremail"
    t.bigint "mobileNo"
    t.string "qualification"
    t.string "currentcity"
    t.string "experience"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "designation"
    t.string "company"
    t.string "location"
    t.string "qualification"
    t.string "salary"
    t.string "experience"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "jobcourses", force: :cascade do |t|
    t.string "designation"
    t.string "company"
    t.string "qualification"
    t.string "salary"
    t.string "experience"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "jobgurus", force: :cascade do |t|
    t.string "designation"
    t.string "company"
    t.string "location"
    t.string "qualification"
    t.string "salary"
    t.string "experience"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "joblocations", force: :cascade do |t|
    t.string "designation"
    t.string "company"
    t.string "qualification"
    t.string "salary"
    t.string "experience"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "jobroles", force: :cascade do |t|
    t.string "designation"
    t.string "company"
    t.string "qualification"
    t.string "salary"
    t.string "experience"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "designation"
    t.string "company"
    t.string "location"
    t.string "qualification"
    t.integer "salary"
    t.integer "experience"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "designation"
    t.string "company"
    t.string "location"
    t.string "qualification"
    t.string "salary"
    t.string "experience"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "designation"
    t.string "company"
    t.string "location"
    t.string "qualification"
    t.string "salary"
    t.string "experience"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.bigint "mobile"
    t.string "email"
    t.string "password_digest"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
