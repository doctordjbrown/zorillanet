class HoboMigration3 < ActiveRecord::Migration
  def self.up
    add_column :conditions, :condition_name, :string
    add_column :conditions, :condition_description, :string

    add_column :locations, :location_name, :string
    add_column :locations, :location_description, :string

    add_column :patients, :location_id, :integer

    add_column :patient_conditions, :patient_id, :integer
    add_column :patient_conditions, :condition_id, :integer

    add_index :patients, [:location_id]

    add_index :patient_conditions, [:patient_id]
    add_index :patient_conditions, [:condition_id]
  end

  def self.down
    remove_column :conditions, :condition_name
    remove_column :conditions, :condition_description

    remove_column :locations, :location_name
    remove_column :locations, :location_description

    remove_column :patients, :location_id

    remove_column :patient_conditions, :patient_id
    remove_column :patient_conditions, :condition_id

    remove_index :patients, :name => :index_patients_on_location_id rescue ActiveRecord::StatementInvalid

    remove_index :patient_conditions, :name => :index_patient_conditions_on_patient_id rescue ActiveRecord::StatementInvalid
    remove_index :patient_conditions, :name => :index_patient_conditions_on_condition_id rescue ActiveRecord::StatementInvalid
  end
end
