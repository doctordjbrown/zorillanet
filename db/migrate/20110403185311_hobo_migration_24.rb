class HoboMigration24 < ActiveRecord::Migration
  def self.up
    remove_column :patients, :admission_status
  end

  def self.down
    add_column :patients, :admission_status, :string, :default => "discharged"
  end
end
