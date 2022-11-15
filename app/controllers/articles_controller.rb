class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(articles_params)
    redirect_to :articles
  end

  def edit
    @article = Article.find(params[:id])
  end

  def show

  end

  def update
    @article = Article.find(params[:id])
    @article.update(articles_params)
    redirect_to :articles
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to :articles
  end

  private

  def articles_params
    params.require(:article).permit(:title, :content)
  end
end
