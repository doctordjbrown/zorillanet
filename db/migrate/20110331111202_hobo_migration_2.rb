class HoboMigration2 < ActiveRecord::Migration
  def self.up
    create_table :conditions do |t|
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :locations do |t|
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :patient_conditions do |t|
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :conditions
    drop_table :locations
    drop_table :patient_conditions
  end
end
