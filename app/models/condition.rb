class Condition < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    condition_name        :string
    condition_description :string
    timestamps
  end
  
  def name
    condition_name
  end
  
  
  has_many   :patients , :through => :patient_condition , :accessible => true
  has_many   :patient_condition , :dependent => :destroy  
  # children   :patients
  

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
