class ArticlesController < ApplicationController
def new
  end
 def create
 @article = Article.new(params.require(:article).permit(:title, :text, :language_id, :rule_id, :president_id,:domain_id, :production_ids=>[]))
 
  @article.save
  redirect_to @article
  end
  def update
  @article = Article.find(params[:id])
 
  if @article.update(article_params)
    redirect_to @article
  else
    render 'edit'
  end
  end
  def show
    @article = Article.find(params[:id])
  end
  def edit
  @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  private
  def article_params
    params.require(:article).permit(:title, :text, :language_id, :rule_id, :president_id, :domain_id, :production_ids=>[])
  end
end
