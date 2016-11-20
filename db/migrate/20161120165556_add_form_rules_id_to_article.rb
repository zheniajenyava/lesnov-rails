class AddFormRulesIdToArticle < ActiveRecord::Migration
  def change
  add_column :articles, :form_rules_id, :integer
  add_index  :articles, :form_rules_id
  end
end
