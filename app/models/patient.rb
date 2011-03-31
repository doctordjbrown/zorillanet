class Patient < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    first_name               :string
    last_name                :string
    initials                 :string
    title                    :string
    gender                   :string
    date_of_birth            :date
    hospital_identifier      :string
    expected_dishcharge_date :date
    current_risk_score       :integer
    notes                    :text
    timestamps
  end
  
  def name
    title + " " + first_name + " " + last_name
  end
  
  
  belongs_to :location
  
  has_many   :conditions , :through => :patient_condition , :accessible => true
  has_many   :patient_condition , :dependent => :destroy
  children   :conditions
  

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
