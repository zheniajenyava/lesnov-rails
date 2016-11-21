class AddTelephoneCodeIdToArticle < ActiveRecord::Migration[5.0]
  def change
 	add_column :articles, :telephoneCode_id, :string
        add_index  :articles, :telephoneCode_id
  end
end
