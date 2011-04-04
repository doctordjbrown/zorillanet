class HoboMigration19 < ActiveRecord::Migration
  def self.up
    change_column :patients, :state, :string, :limit => 255, :default => "unknown"
  end

  def self.down
    change_column :patients, :state, :string
  end
end
