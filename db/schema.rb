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

ActiveRecord::Schema.define(version: 20130807144808) do

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

  create_table "enrollment_courses", force: true do |t|
    t.integer  "program_enrollment_id"
    t.integer  "novanet_course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "completed"
  end

  create_table "event_employees", force: true do |t|
    t.integer  "event_id"
    t.integer  "person_id"
    t.string   "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "event_employees", ["event_id"], name: "index_event_employees_on_event_id", using: :btree
  add_index "event_employees", ["person_id"], name: "index_event_employees_on_person_id", using: :btree

  create_table "events", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "kind"
    t.string   "location"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "time"
    t.string   "comments"
    t.datetime "date"
  end

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

  create_table "novanet_courses", force: true do |t|
    t.string   "name"
    t.string   "subject"
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
    t.integer  "grade"
    t.boolean  "vegetarian"
    t.string   "other_food_needs"
    t.string   "physical_impairments"
    t.string   "comments"
    t.string   "tag"
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

  create_table "person_events", force: true do |t|
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "person_id"
    t.boolean  "contacted"
    t.boolean  "responded"
    t.boolean  "attending"
    t.boolean  "attended"
    t.boolean  "paid"
    t.string   "notes"
  end

  add_index "person_events", ["event_id"], name: "index_person_events_on_event_id", using: :btree

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

  create_table "program_attendances", force: true do |t|
    t.integer  "program_enrollment_id"
    t.integer  "program_date_id"
    t.string   "status"
    t.string   "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "program_attendances", ["program_date_id"], name: "index_program_attendances_on_program_date_id", using: :btree
  add_index "program_attendances", ["program_enrollment_id"], name: "index_program_attendances_on_program_enrollment_id", using: :btree

  create_table "program_dates", force: true do |t|
    t.integer  "program_id"
    t.date     "date"
    t.string   "status"
    t.string   "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "program_dates", ["program_id"], name: "index_program_dates_on_program_id", using: :btree

  create_table "program_employees", force: true do |t|
    t.integer  "program_location_id"
    t.integer  "person_id"
    t.string   "job_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "program_employees", ["program_location_id"], name: "index_program_employees_on_program_location_id", using: :btree

  create_table "program_enrollments", force: true do |t|
    t.integer  "program_location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "person_id"
  end

  add_index "program_enrollments", ["program_location_id"], name: "index_program_enrollments_on_program_location_id", using: :btree

  create_table "program_locations", force: true do |t|
    t.integer  "program_id"
    t.string   "name"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.string   "street_address"
    t.boolean  "active"
  end

  add_index "program_locations", ["program_id"], name: "index_program_locations_on_program_id", using: :btree

  create_table "programs", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "schools", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "support_services", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_events", force: true do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_events", ["event_id"], name: "index_user_events_on_event_id", using: :btree
  add_index "user_events", ["user_id"], name: "index_user_events_on_user_id", using: :btree

  create_table "user_people", force: true do |t|
    t.integer  "user_id"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_people", ["person_id"], name: "index_user_people_on_person_id", using: :btree
  add_index "user_people", ["user_id"], name: "index_user_people_on_user_id", using: :btree

  create_table "user_program_locations", force: true do |t|
    t.integer  "user_id"
    t.integer  "program_location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_program_locations", ["program_location_id"], name: "index_user_program_locations_on_program_location_id", using: :btree
  add_index "user_program_locations", ["user_id"], name: "index_user_program_locations_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "kind"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
