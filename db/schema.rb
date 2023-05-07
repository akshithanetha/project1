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

ActiveRecord::Schema[7.0].define(version: 2023_04_24_121110) do
  create_table "account_histories", force: :cascade do |t|
    t.integer "account_id", null: false
    t.string "subscription"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_account_histories_on_account_id"
  end

  create_table "accounts", force: :cascade do |t|
    t.string "name"
    t.string "emailId"
    t.string "phone"
    t.string "password"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_accounts_on_user_id", unique: true
  end

  create_table "admins", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "manageable_type"
    t.integer "manageable_id"
    t.index ["manageable_type", "manageable_id"], name: "index_admins_on_manageable"
  end

  create_table "courses", force: :cascade do |t|
    t.string "Name"
    t.string "Category"
    t.string "Duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "instructor"
    t.integer "user_id"
    t.index ["user_id"], name: "index_courses_on_user_id"
  end

  create_table "courses_instructors", id: false, force: :cascade do |t|
    t.integer "course_id", null: false
    t.integer "instructor_id", null: false
    t.integer "courses_id", null: false
    t.integer "instructors_id", null: false
    t.index ["courses_id"], name: "index_courses_instructors_on_courses_id"
    t.index ["instructors_id"], name: "index_courses_instructors_on_instructors_id"
  end

  create_table "instructors", force: :cascade do |t|
    t.string "name"
    t.integer "no_of_courses"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "course_id", null: false
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_statuses_on_course_id"
    t.index ["user_id"], name: "index_statuses_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "courses"
    t.string "instructor"
    t.string "categories"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "emailId"
  end

  add_foreign_key "account_histories", "accounts"
  add_foreign_key "accounts", "users"
  add_foreign_key "courses_instructors", "courses", column: "courses_id"
  add_foreign_key "courses_instructors", "instructors", column: "instructors_id"
  add_foreign_key "statuses", "courses"
  add_foreign_key "statuses", "users"
end
