class CreateJoinTableArticleProduction < ActiveRecord::Migration
  def change
    create_join_table :articles, :productions do |t|
      # t.index [:article_id, :production_id]
      # t.index [:production_id, :article_id]
    end
  end
end
