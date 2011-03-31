class HoboMigration5 < ActiveRecord::Migration
  def self.up
    create_table :location_statuses do |t|
      t.string   :location_status_name
      t.string   :location_status_description
      t.datetime :created_at
      t.datetime :updated_at
    end

    add_column :locations, :location_status_id, :integer

    add_index :locations, [:location_status_id]
  end

  def self.down
    remove_column :locations, :location_status_id

    drop_table :location_statuses

    remove_index :locations, :name => :index_locations_on_location_status_id rescue ActiveRecord::StatementInvalid
  end
end
