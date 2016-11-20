class CreateCitizenShips < ActiveRecord::Migration
  def change
    create_table :citizen_ships do |t|
      t.string :name

      t.timestamps
    end
  end
end
