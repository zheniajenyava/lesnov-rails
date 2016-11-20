class CreateFormRules < ActiveRecord::Migration
  def change
    create_table :form_rules do |t|
      t.string :name
      t.boolean :isArchive

      t.timestamps
    end
  end
end
