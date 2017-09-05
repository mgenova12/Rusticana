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

ActiveRecord::Schema.define(version: 20170905144819) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applies", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone_number"
    t.datetime "date_of_birth"
    t.string   "eighteen_or_older"
    t.string   "prevented"
    t.string   "position"
    t.string   "start_date"
    t.string   "employment_salary"
    t.string   "currently_employed"
    t.string   "employed_where"
    t.string   "qpplied_before"
    t.string   "former_employer1"
    t.string   "former_salery1"
    t.string   "former_positon1"
    t.string   "reason_for_leaving1"
    t.string   "former_employer2"
    t.string   "former_salery2"
    t.string   "former_positon2"
    t.string   "reason_for_leaving2"
    t.string   "former_employer3"
    t.string   "former_salery3"
    t.string   "former_positon3"
    t.string   "reason_for_leaving3"
    t.string   "high_school"
    t.string   "hs_years_attended"
    t.string   "hs_graduate"
    t.string   "college"
    t.string   "college_years"
    t.string   "college_graduate"
    t.string   "reference_name1"
    t.string   "reference_address1"
    t.string   "reference_business1"
    t.string   "reference_years1"
    t.string   "reference_name2"
    t.string   "reference_address2"
    t.string   "reference_business2"
    t.string   "reference_year2"
    t.string   "reference_name3"
    t.string   "reference_address3"
    t.string   "reference_business3"
    t.string   "reference_years3"
    t.string   "special_skills"
    t.string   "activites"
    t.string   "military"
    t.string   "comment"
  end

  create_table "specials", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.boolean  "selected",           default: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "role"
  end

end
