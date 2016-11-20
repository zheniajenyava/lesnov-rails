class AddCitizenShipIdToPresident < ActiveRecord::Migration
  def change
	add_column :presidents, :citizen_ship_id, :integer
        add_index  :presidents, :citizen_ship_id
  end
end
