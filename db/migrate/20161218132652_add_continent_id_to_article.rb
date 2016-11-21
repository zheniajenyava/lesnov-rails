class AddContinentIdToArticle < ActiveRecord::Migration[5.0]
  def change
	add_column :articles, :continent_id, :integer
        add_index  :articles, :continent_id
  end
end
