class CreatePresidents < ActiveRecord::Migration
  def change
    create_table :presidents do |t|
      t.string :firstName
      t.string :lastName
      t.text :description

      t.timestamps
    end
  end
end
