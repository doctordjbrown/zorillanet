class Patient < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    first_name                     :string  
    last_name                      :string  
    initials                       :string  
    title                          :string
    next_of_kin                    :string
    gender                         :string  
    date_of_birth                  :date    
    hospital_identifier            :string  
    expected_dishcharge_date       :date    
    current_risk_score             :integer 
    notes                          :text    
    last_admission_date            :date    
    last_discharge_date            :date    
    admission_changed_by_user      :integer 
    timestamps
  end
  
  def name
    title + " " + first_name + " " + last_name
  end
  
  
  belongs_to :location
  belongs_to :consultant
  
  has_many   :conditions , :through => :patient_condition , :accessible => true
  has_many   :patient_condition , :dependent => :destroy
  children   :conditions 

  has_many   :alerts , :through => :patient_alert , :accessible => true
  has_many   :patient_alert , :dependent => :destroy

  has_many   :tasks , :through => :patient_task , :accessible => true
  has_many   :patient_task , :dependent => :destroy

  
  lifecycle :state_field => :admission_status do
  
    state  :admitted
    state  :discharged ,  :default => true


    transition  :admit_patient, { :discharged => :admitted } , :params => [ :location ] ,
                :available_to => :all do
                  
    end

    transition  :disharge_patient, { :admitted => :discharged }, :params => [ :location ] ,
                :available_to => :all do
    end
               
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
