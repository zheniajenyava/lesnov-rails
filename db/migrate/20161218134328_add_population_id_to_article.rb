class AddPopulationIdToArticle < ActiveRecord::Migration[5.0]
  def change
	add_column :articles, :population_id, :integer
        add_index  :articles, :population_id
  end
end
