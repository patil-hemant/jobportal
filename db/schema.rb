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

ActiveRecord::Schema.define(version: 20141031070358) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "education_details", force: true do |t|
    t.string   "institute"
    t.date     "passout_year"
    t.string   "score"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "course"
    t.string   "pg_course"
    t.string   "pg_institute"
    t.date     "pg_passout_year"
    t.string   "pg_score"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.integer  "contact_no"
    t.string   "address"
    t.text     "skills"
    t.string   "twitter_url"
    t.string   "linkedin_url"
    t.string   "blog_url"
    t.string   "current_location"
    t.string   "ready_to_relocate"
    t.string   "image"
    t.string   "resume"
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "work_experiences", force: true do |t|
    t.string   "company_name"
    t.text     "Company_description"
    t.string   "your_designation"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
