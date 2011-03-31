class HoboMigration10 < ActiveRecord::Migration
  def self.up
    add_index :patient_actions, [:patient_id]
    add_index :patient_actions, [:action_id]
  end

  def self.down
    remove_index :patient_actions, :name => :index_patient_actions_on_patient_id rescue ActiveRecord::StatementInvalid
    remove_index :patient_actions, :name => :index_patient_actions_on_action_id rescue ActiveRecord::StatementInvalid
  end
end
