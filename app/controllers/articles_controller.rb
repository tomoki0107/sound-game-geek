class ArticlesController < ApplicationController
  def index
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to article_path(@article)
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
  end

  private

  def article_params
    params.require(:article).permit(:image, :title, :info, :category_id).merge(user_id: current_user.id)
  end
end
