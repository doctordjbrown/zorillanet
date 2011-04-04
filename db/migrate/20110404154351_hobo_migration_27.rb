class HoboMigration27 < ActiveRecord::Migration
  def self.up
    add_column :conditions, :tasklist_id, :integer

    add_index :conditions, [:tasklist_id]
  end

  def self.down
    remove_column :conditions, :tasklist_id

    remove_index :conditions, :name => :index_conditions_on_tasklist_id rescue ActiveRecord::StatementInvalid
  end
end
