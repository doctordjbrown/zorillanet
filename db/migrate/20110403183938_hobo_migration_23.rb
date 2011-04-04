class HoboMigration23 < ActiveRecord::Migration
  def self.up
    change_column :patients, :admission_status, :string, :limit => 255, :default => :discharged
  end

  def self.down
    change_column :patients, :admission_status, :string, :default => "discharged"
  end
end
