class HoboMigration25 < ActiveRecord::Migration
  def self.up
    add_column :patients, :admission_status, :string, :default => "discharged"
    remove_column :patients, :state

    remove_index :patients, :name => :index_patients_on_state rescue ActiveRecord::StatementInvalid
    add_index :patients, [:admission_status]
  end

  def self.down
    remove_column :patients, :admission_status
    add_column :patients, :state, :string, :default => "discharged"

    remove_index :patients, :name => :index_patients_on_admission_status rescue ActiveRecord::StatementInvalid
    add_index :patients, [:state]
  end
end
