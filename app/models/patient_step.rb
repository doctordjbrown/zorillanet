class PatientStep < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do  
    patient_id        :integer
    step_id           :integer
    date_added        :date
    added_by_user     :string       # will need to deal with this link to User later
    complete          :boolean
    date_completed    :date
    notes             :text
    completed_by_user :string       # will need to deal with this link to User later
    timestamps
  end

  def name
    patient
  end

  belongs_to :patient
  belongs_to :step
  
  
  # WE NEED TO ADD LIFECYCLE HERE FOR EACH PATIENT STEP #
  
  
    

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
