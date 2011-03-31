class HoboMigration8 < ActiveRecord::Migration
  def self.up
    create_table :actions do |t|
      t.string   :action_name
      t.string   :action_description
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :patient_actions do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :action_id
      t.integer  :patient_id
    end
    add_index :patient_actions, [:patient_id]
    add_index :patient_actions, [:action_id]
  end

  def self.down
    drop_table :actions
    drop_table :patient_actions
  end
end
