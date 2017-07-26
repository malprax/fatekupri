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

ActiveRecord::Schema.define(version: 20170726024728) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "letters", force: :cascade do |t|
    t.string "name"
    t.string "stambuk"
    t.string "department"
    t.string "birth_place"
    t.string "birth_date"
    t.string "address"
    t.string "phone"
    t.string "yudisium_date"
    t.string "essay_title"
    t.string "parents_name"
    t.string "employee_number"
    t.string "employee_level"
    t.string "parents_phone"
    t.string "company_name"
    t.string "letter_kind"
    t.date "letter_date"
    t.string "letter_number"
    t.string "semester_genap_ganjil"
    t.string "education_year"
    t.string "formers"
    t.date "disposition_date"
    t.string "administration_head"
    t.string "institute_to"
    t.string "number_diploma_university"
    t.string "number_diploma_faculty"
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_registrations", force: :cascade do |t|
    t.string "full_name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "pos_code"
    t.string "phone"
    t.string "birth_date"
    t.string "birth_place"
    t.string "religion"
    t.string "gender"
    t.string "blood"
    t.string "passed_year"
    t.string "citizen"
    t.string "father_name"
    t.string "father_job"
    t.string "mother_name"
    t.string "mother_job"
    t.string "parents_phone_number"
    t.string "parents_address"
    t.string "parents_city"
    t.string "parents_state"
    t.string "parents_pos_code"
    t.string "institute_from"
    t.string "institute_address"
    t.string "institute_city"
    t.string "institute_state"
    t.string "institute_pos_code"
    t.string "department"
    t.string "department_sub"
    t.string "department_code"
    t.integer "number_test"
    t.integer "number_form"
    t.string "room"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
