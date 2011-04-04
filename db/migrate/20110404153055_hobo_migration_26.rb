class HoboMigration26 < ActiveRecord::Migration
  def self.up
    add_column :patients, :next_of_kin, :string
  end

  def self.down
    remove_column :patients, :next_of_kin
  end
end
