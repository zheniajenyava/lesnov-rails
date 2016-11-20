class AddRuleIdToArticle < ActiveRecord::Migration
  def change
	add_column :articles, :rule_id, :integer
        add_index  :articles, :rule_id
  end
end
