class HoboMigration4 < ActiveRecord::Migration
  def self.up
    create_table :assets do |t|
      t.string   :asset_name
      t.string   :asset_description
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :location_assets do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :asset_id
      t.integer  :location_id
    end
    add_index :location_assets, [:location_id]
    add_index :location_assets, [:asset_id]
  end

  def self.down
    drop_table :assets
    drop_table :location_assets
  end
end
