class AddLanguageToArticle < ActiveRecord::Migration
  def change
    add_reference :articles, :language, index: true
  end
end
