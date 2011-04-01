class HoboMigration17 < ActiveRecord::Migration
  def self.up
    create_table :tasklists do |t|
      t.string   :tasklist_name
      t.string   :tasklist_description
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :tasklist_tasks do |t|
      t.integer  :task
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :tasklist_id
      t.integer  :task_id
    end
    add_index :tasklist_tasks, [:tasklist_id]
    add_index :tasklist_tasks, [:task_id]
  end

  def self.down
    drop_table :tasklists
    drop_table :tasklist_tasks
  end
end
