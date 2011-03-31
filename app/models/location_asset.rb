class LocationAsset < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    location_id :integer
    asset_id    :integer
    timestamps
  end    

  belongs_to :location
  belongs_to :asset

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
