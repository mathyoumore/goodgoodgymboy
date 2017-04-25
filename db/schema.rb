# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20170425024912) do

  create_table "exercises", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "personal_records", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "exercise_id"
    t.integer  "sets"
    t.integer  "repititions"
    t.float    "one_rep_max"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "personal_records", ["exercise_id"], name: "index_personal_records_on_exercise_id"
  add_index "personal_records", ["user_id"], name: "index_personal_records_on_user_id"

  create_table "set_of_exercises", force: :cascade do |t|
    t.integer  "exercise_id"
    t.integer  "weight"
    t.integer  "reps"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "set_of_exercises", ["exercise_id"], name: "index_set_of_exercises_on_exercise_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "workouts", force: :cascade do |t|
    t.integer  "sets_of_exercises_id"
    t.integer  "user_id"
    t.datetime "date"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "workouts", ["sets_of_exercises_id"], name: "index_workouts_on_sets_of_exercises_id"
  add_index "workouts", ["user_id"], name: "index_workouts_on_user_id"

end
