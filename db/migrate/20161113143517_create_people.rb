class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.test
      t.timestamps
    end
  end
end
