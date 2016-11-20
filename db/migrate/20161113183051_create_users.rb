class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.boolean :role, null: false, default: false
      t.datetime :reg_date
      t.timestamps
    end
  end
end
