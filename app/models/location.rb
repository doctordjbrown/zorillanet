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
    
    has_many   :assets , :through => :location_asset , :accessible => true
    has_many   :location_asset , :dependent => :destroy
    children   :assets
      
  
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
