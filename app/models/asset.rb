class Asset < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    asset_name :string
    asset_description :string
    timestamps
  end

  def name
    asset_name
  end
  
  has_many   :locations , :through => :location_asset , :accessible => true
  has_many   :location_asset , :dependent => :destroy
  children   :locations
  

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
