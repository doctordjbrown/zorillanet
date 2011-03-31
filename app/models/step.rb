class Step < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    step_name  :string
    step_description :string
    timestamps
  end
  
  has_many   :patients , :through => :patient_step , :accessible => true
  has_many   :patient_step , :dependent => :destroy  
  children   :patients
  

def name
  step_name
end

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
