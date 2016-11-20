class CreateGovProds < ActiveRecord::Migration
  def change
    create_table :gov_prods do |t|
      t.belongs_to :articles, index: true
      t.belongs_to :production, index: true
      t.timestamps
    end
  end
end
