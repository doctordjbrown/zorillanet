class Tasklist < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    tasklist_name         :string
    tasklist_description  :string
    timestamps
  end
  
  has_many   :tasks , :through => :tasklist_task , :accessible => true
  has_many   :tasklist_task , :dependent => :destroy
  # children   :tasks

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
