class HoboMigration11 < ActiveRecord::Migration
  def self.up
    drop_table :actions
    drop_table :patient_actions
  end

  def self.down
    create_table "actions", :force => true do |t|
      t.string   "action_name"
      t.string   "action_description"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    create_table "patient_actions", :force => true do |t|
      t.datetime "created_at"
      t.datetime "updated_at"
      t.integer  "action_id"
      t.integer  "patient_id"
    end

    add_index "patient_actions", ["action_id"], :name => "index_patient_actions_on_action_id"
    add_index "patient_actions", ["patient_id"], :name => "index_patient_actions_on_patient_id"
  end
end
