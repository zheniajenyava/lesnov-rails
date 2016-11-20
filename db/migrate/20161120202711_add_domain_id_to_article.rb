class AddDomainIdToArticle < ActiveRecord::Migration
  def change
	add_column :articles, :domain_id, :integer
        add_index  :articles, :domain_id
  end
end
