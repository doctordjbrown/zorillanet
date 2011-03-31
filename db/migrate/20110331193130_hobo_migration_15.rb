class HoboMigration15 < ActiveRecord::Migration
  def self.up
    add_column :consultants, :consultant_initials, :string
    add_column :consultants, :consultant_name, :string
    add_column :consultants, :speciality, :string

    remove_index :patients, :name => :index_patients_on_consultant_id rescue ActiveRecord::StatementInvalid
  end

  def self.down
    remove_column :consultants, :consultant_initials
    remove_column :consultants, :consultant_name
    remove_column :consultants, :speciality

    add_index :patients, [:consultant_id]
  end
end
