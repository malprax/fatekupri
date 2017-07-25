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

ActiveRecord::Schema.define(version: 20170720233621) do

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

end
