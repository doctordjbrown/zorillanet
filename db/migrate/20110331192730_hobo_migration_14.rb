class HoboMigration14 < ActiveRecord::Migration
  def self.up
    create_table :consultants do |t|
      t.datetime :created_at
      t.datetime :updated_at
    end

    add_column :patients, :consultant_id, :integer

    add_index :patients, [:consultant_id]
  end

  def self.down
    remove_column :patients, :consultant_id

    drop_table :consultants

    remove_index :patients, :name => :index_patients_on_consultant_id rescue ActiveRecord::StatementInvalid
  end
end
