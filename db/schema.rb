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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110403191857) do

  create_table "alerts", :force => true do |t|
    t.string   "alert_name"
    t.string   "alert_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assets", :force => true do |t|
    t.string   "asset_name"
    t.string   "asset_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "conditions", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "condition_name"
    t.string   "condition_description"
  end

  create_table "consultants", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "consultant_initials"
    t.string   "consultant_name"
    t.string   "speciality"
  end

  create_table "location_assets", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "asset_id"
    t.integer  "location_id"
  end

  add_index "location_assets", ["asset_id"], :name => "index_location_assets_on_asset_id"
  add_index "location_assets", ["location_id"], :name => "index_location_assets_on_location_id"

  create_table "location_statuses", :force => true do |t|
    t.string   "location_status_name"
    t.string   "location_status_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "location_name"
    t.string   "location_description"
    t.integer  "location_status_id"
  end

  add_index "locations", ["location_status_id"], :name => "index_locations_on_location_status_id"

  create_table "patient_alerts", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "alert_id"
    t.integer  "patient_id"
  end

  add_index "patient_alerts", ["alert_id"], :name => "index_patient_alerts_on_alert_id"
  add_index "patient_alerts", ["patient_id"], :name => "index_patient_alerts_on_patient_id"

  create_table "patient_conditions", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "patient_id"
    t.integer  "condition_id"
  end

  add_index "patient_conditions", ["condition_id"], :name => "index_patient_conditions_on_condition_id"
  add_index "patient_conditions", ["patient_id"], :name => "index_patient_conditions_on_patient_id"

  create_table "patient_tasks", :force => true do |t|
    t.date     "date_added"
    t.string   "added_by_user"
    t.boolean  "complete"
    t.date     "date_completed"
    t.text     "notes"
    t.string   "completed_by_user"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "task_id"
    t.integer  "patient_id"
  end

  add_index "patient_tasks", ["patient_id"], :name => "index_patient_tasks_on_patient_id"
  add_index "patient_tasks", ["task_id"], :name => "index_patient_tasks_on_task_id"

  create_table "patients", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "initials"
    t.string   "title"
    t.string   "gender"
    t.date     "date_of_birth"
    t.string   "hospital_identifier"
    t.date     "expected_dishcharge_date"
    t.integer  "current_risk_score"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "location_id"
    t.integer  "consultant_id"
    t.date     "last_admission_date"
    t.date     "last_discharge_date"
    t.integer  "admission_changed_by_user"
    t.datetime "key_timestamp"
    t.string   "admission_status",          :default => "discharged"
  end

  add_index "patients", ["admission_status"], :name => "index_patients_on_admission_status"
  add_index "patients", ["consultant_id"], :name => "index_patients_on_consultant_id"
  add_index "patients", ["location_id"], :name => "index_patients_on_location_id"

  create_table "tasklist_tasks", :force => true do |t|
    t.integer  "task"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tasklist_id"
    t.integer  "task_id"
  end

  add_index "tasklist_tasks", ["task_id"], :name => "index_tasklist_tasks_on_task_id"
  add_index "tasklist_tasks", ["tasklist_id"], :name => "index_tasklist_tasks_on_tasklist_id"

  create_table "tasklists", :force => true do |t|
    t.string   "tasklist_name"
    t.string   "tasklist_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", :force => true do |t|
    t.string   "task_name"
    t.string   "task_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "name"
    t.string   "email_address"
    t.boolean  "administrator",                           :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state",                                   :default => "invited"
    t.datetime "key_timestamp"
  end

  add_index "users", ["state"], :name => "index_users_on_state"

end
