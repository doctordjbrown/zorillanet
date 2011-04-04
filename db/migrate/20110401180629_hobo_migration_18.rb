class HoboMigration18 < ActiveRecord::Migration
  def self.up
    add_column :patients, :admission_status, :string
    add_column :patients, :last_admission_date, :date
    add_column :patients, :last_discharge_date, :date
    add_column :patients, :admission_changed_by_user, :integer
    add_column :patients, :state, :string
    add_column :patients, :key_timestamp, :datetime

    add_index :patients, [:state]
  end

  def self.down
    remove_column :patients, :admission_status
    remove_column :patients, :last_admission_date
    remove_column :patients, :last_discharge_date
    remove_column :patients, :admission_changed_by_user
    remove_column :patients, :state
    remove_column :patients, :key_timestamp

    remove_index :patients, :name => :index_patients_on_state rescue ActiveRecord::StatementInvalid
  end
end
