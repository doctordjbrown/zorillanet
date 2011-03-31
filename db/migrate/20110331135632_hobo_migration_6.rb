class HoboMigration6 < ActiveRecord::Migration
  def self.up
    create_table :alerts do |t|
      t.string   :alert_name
      t.string   :alert_description
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :patient_alerts do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :alert_id
      t.integer  :patient_id
    end
    add_index :patient_alerts, [:patient_id]
    add_index :patient_alerts, [:alert_id]
  end

  def self.down
    drop_table :alerts
    drop_table :patient_alerts
  end
end
