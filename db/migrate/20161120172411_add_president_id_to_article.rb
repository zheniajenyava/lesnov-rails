class AddPresidentIdToArticle < ActiveRecord::Migration
  def change
  	add_column :articles, :president_id, :integer
 	add_index  :articles, :president_id

  end
end
