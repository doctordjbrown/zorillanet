class HoboMigration16 < ActiveRecord::Migration
  def self.up
    drop_table :patient_steps
    drop_table :steps

    create_table :tasks do |t|
      t.string   :task_name
      t.string   :task_description
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :patient_tasks do |t|
      t.date     :date_added
      t.string   :added_by_user
      t.boolean  :complete
      t.date     :date_completed
      t.text     :notes
      t.string   :completed_by_user
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :task_id
      t.integer  :patient_id
    end
    add_index :patient_tasks, [:patient_id]
    add_index :patient_tasks, [:task_id]

    add_index :patients, [:consultant_id]
  end

  def self.down
    create_table "patient_steps", :force => true do |t|
      t.datetime "created_at"
      t.datetime "updated_at"
      t.integer  "step_id"
      t.integer  "patient_id"
      t.date     "date_added"
      t.string   "added_by_user"
      t.boolean  "complete"
      t.date     "date_completed"
      t.text     "notes"
      t.string   "completed_by_user"
    end

    add_index "patient_steps", ["patient_id"], :name => "index_patient_steps_on_patient_id"
    add_index "patient_steps", ["step_id"], :name => "index_patient_steps_on_step_id"

    create_table "steps", :force => true do |t|
      t.string   "step_name"
      t.string   "step_description"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    drop_table :tasks
    drop_table :patient_tasks

    remove_index :patients, :name => :index_patients_on_consultant_id rescue ActiveRecord::StatementInvalid
  end
end
