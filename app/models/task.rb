class Task < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
      task_name  :string
      task_description :string
      timestamps
    end

    has_many   :patients , :through => :patient_task , :accessible => true
    has_many   :patient_task , :dependent => :destroy  
    children   :patients

    has_many   :tasklists , :through => :tasklist_task , :accessible => true
    has_many   :tasklist_task , :dependent => :destroy



  def name
    task_name
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
