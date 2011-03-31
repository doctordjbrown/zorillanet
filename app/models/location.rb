class Location < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    location_name        :string
    location_description :string
    timestamps
  end
  
  def name
    location_name
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
