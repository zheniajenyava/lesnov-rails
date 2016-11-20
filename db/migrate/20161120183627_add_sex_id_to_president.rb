class AddSexIdToPresident < ActiveRecord::Migration
  def change
	add_column :presidents, :sex_id, :integer
        add_index  :presidents, :sex_id
  end
end
