class HoboMigration12 < ActiveRecord::Migration
  def self.up
    create_table :patient_steps do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :step_id
      t.integer  :patient_id
    end
    add_index :patient_steps, [:patient_id]
    add_index :patient_steps, [:step_id]

    create_table :steps do |t|
      t.string   :step_name
      t.string   :step_description
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :patient_steps
    drop_table :steps
  end
end
