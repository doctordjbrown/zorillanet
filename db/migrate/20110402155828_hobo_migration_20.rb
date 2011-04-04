class HoboMigration20 < ActiveRecord::Migration
  def self.up
    remove_column :patients, :admission_status
  end

  def self.down
    add_column :patients, :admission_status, :string
  end
end
