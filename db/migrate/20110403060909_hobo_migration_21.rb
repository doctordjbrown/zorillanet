class HoboMigration21 < ActiveRecord::Migration
  def self.up
    add_column :patients, :admission_status, :string
    change_column :patients, :state, :string, :limit => 255, :default => "discharged"
  end

  def self.down
    remove_column :patients, :admission_status
    change_column :patients, :state, :string, :default => "unknown"
  end
end
