class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to article_path(@article)
    else
      render :new
    end
  end

  def show
  end

  def edit
    if @article.user.id != current_user.id
      redirect_to articles_path, alert: '不正なアクセスです'
    end
  end

  def update
    @article.update(article_params)
    if @article.save
      redirect_to article_path(@article), notice: "記事を更新しました"
    else
      render :edit
    end
  end

  def destroy
    if current_user.id == @article.user.id
      @article.destroy
    end
    redirect_to user_path(@article.user), notice: "記事を削除しました"
  end

  private

  def article_params
    params.require(:article).permit(:image, :title, :info, :category_id).merge(user_id: current_user.id)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
