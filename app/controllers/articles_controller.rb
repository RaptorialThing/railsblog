class ArticlesController < ApplicationController
  before_action :authenticate_user!, :except => [:index]
  
  def index
    @articles = Article.all
  end


  def show
    @article = Article.find(params[:id])
  end   


  def new
    @article = Article.new
  end 

  
  def create
    @user = User.find(current_user.id)
    @article = @user.articles.create(article_params)

    if @article
      redirect_to @article
    else 
      render :new
    end    
  end 


  def edit
    @article = Article.find(params[:id])
  end  


  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end 
  end 

        
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end


  private
  def article_params
    params.require(:article).permit(:title,:body,:status)
  end  
end
