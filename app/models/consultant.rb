class Consultant < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    consultant_initials :string
    consultant_name     :string
    speciality          :string
    timestamps
  end
  
  def name
    consultant_initials
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
