class HoboMigration1 < ActiveRecord::Migration
  def self.up
    create_table :patients do |t|
      t.string   :first_name
      t.string   :last_name
      t.string   :initials
      t.string   :title
      t.string   :gender
      t.date     :date_of_birth
      t.string   :hospital_identifier
      t.date     :expected_dishcharge_date
      t.integer  :current_risk_score
      t.text     :notes
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :patients
  end
end
