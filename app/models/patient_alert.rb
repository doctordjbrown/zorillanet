class PatientAlert < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    patient_id :integer
    alert_id   :integer
    timestamps
  end
   
  belongs_to :patient
  belongs_to :alert

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
