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

ActiveRecord::Schema.define(version: 20130722191021) do

  create_table "addresses", force: true do |t|
    t.integer  "person_id"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["person_id"], name: "index_addresses_on_person_id", using: :btree

  create_table "allergies", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "availabilities", force: true do |t|
    t.integer  "person_id"
    t.integer  "day_of_week"
    t.integer  "start_time"
    t.integer  "end_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "availabilities", ["person_id"], name: "index_availabilities_on_person_id", using: :btree

  create_table "emergency_contacts", force: true do |t|
    t.integer  "person_id"
    t.string   "name"
    t.string   "phone"
    t.string   "relationship"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "emergency_contacts", ["person_id"], name: "index_emergency_contacts_on_person_id", using: :btree

  create_table "forms", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interests", force: true do |t|
    t.string   "name"
    t.integer  "program_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "interests", ["program_id"], name: "index_interests_on_program_id", using: :btree

  create_table "medications", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "gender"
    t.datetime "DOB"
    t.string   "race"
    t.string   "email"
    t.string   "parent_id"
    t.integer  "household_number_of_members"
    t.boolean  "in_foster_care"
    t.string   "school_lunch_program"
    t.string   "clinic_name"
    t.string   "clinic_street_address"
    t.string   "clinic_city"
    t.string   "clinic_state"
    t.string   "clinic_zip_code"
    t.string   "clinic_phone_number"
    t.string   "position"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "person_allergies", force: true do |t|
    t.integer  "person_id"
    t.integer  "allergy_id"
    t.integer  "severity"
    t.string   "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "person_allergies", ["allergy_id"], name: "index_person_allergies_on_allergy_id", using: :btree
  add_index "person_allergies", ["person_id"], name: "index_person_allergies_on_person_id", using: :btree

  create_table "person_interests", force: true do |t|
    t.integer  "person_id"
    t.integer  "interest_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "person_interests", ["interest_id"], name: "index_person_interests_on_interest_id", using: :btree
  add_index "person_interests", ["person_id"], name: "index_person_interests_on_person_id", using: :btree

  create_table "person_medications", force: true do |t|
    t.integer  "person_id"
    t.integer  "medication_id"
    t.string   "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "person_medications", ["medication_id"], name: "index_person_medications_on_medication_id", using: :btree
  add_index "person_medications", ["person_id"], name: "index_person_medications_on_person_id", using: :btree

  create_table "person_role_forms", force: true do |t|
    t.integer  "person_role_id"
    t.integer  "form_id"
    t.boolean  "complete"
    t.boolean  "required"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "person_role_forms", ["form_id"], name: "index_person_role_forms_on_form_id", using: :btree
  add_index "person_role_forms", ["person_role_id"], name: "index_person_role_forms_on_person_role_id", using: :btree

  create_table "person_roles", force: true do |t|
    t.integer  "person_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "person_roles", ["person_id"], name: "index_person_roles_on_person_id", using: :btree
  add_index "person_roles", ["role_id"], name: "index_person_roles_on_role_id", using: :btree

  create_table "person_schools", force: true do |t|
    t.integer  "person_id"
    t.integer  "school_id"
    t.integer  "start_grade"
    t.string   "counselor_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "person_schools", ["person_id"], name: "index_person_schools_on_person_id", using: :btree
  add_index "person_schools", ["school_id"], name: "index_person_schools_on_school_id", using: :btree

  create_table "person_supports", force: true do |t|
    t.integer  "person_id"
    t.integer  "support_service_id"
    t.string   "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "person_supports", ["person_id"], name: "index_person_supports_on_person_id", using: :btree
  add_index "person_supports", ["support_service_id"], name: "index_person_supports_on_support_service_id", using: :btree

  create_table "phone_numbers", force: true do |t|
    t.integer  "person_id"
    t.string   "phone_number"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phone_numbers", ["person_id"], name: "index_phone_numbers_on_person_id", using: :btree

  create_table "role_forms", force: true do |t|
    t.integer  "role_id"
    t.integer  "form_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "role_forms", ["form_id"], name: "index_role_forms_on_form_id", using: :btree
  add_index "role_forms", ["role_id"], name: "index_role_forms_on_role_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "support_services", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
