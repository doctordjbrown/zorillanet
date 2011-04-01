class Alert < ActiveRecord::Base

  hobo_model # Don't put anything above this
  
  fields do
    alert_name        :string ,  :required , :unique => true
    alert_description :string ,  :required
    timestamps
  end
  
  def name
    alert_name    
  end
  
  has_many   :patients , :through => :patient_alert , :accessible => true
  has_many   :patient_alert , :dependent => :destroy  
  children   :patients

  

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
