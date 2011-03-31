class HoboMigration13 < ActiveRecord::Migration
  def self.up
    add_column :patient_steps, :date_added, :date
    add_column :patient_steps, :added_by_user, :string
    add_column :patient_steps, :complete, :boolean
    add_column :patient_steps, :date_completed, :date
    add_column :patient_steps, :notes, :text
    add_column :patient_steps, :completed_by_user, :string
  end

  def self.down
    remove_column :patient_steps, :date_added
    remove_column :patient_steps, :added_by_user
    remove_column :patient_steps, :complete
    remove_column :patient_steps, :date_completed
    remove_column :patient_steps, :notes
    remove_column :patient_steps, :completed_by_user
  end
end
