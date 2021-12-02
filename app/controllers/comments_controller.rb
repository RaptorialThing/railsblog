class CommentsController < ApplicationController
	before_action :authenticate_user!
	
	def create
		@article = Article.find(params[:article_id])
		#@article.comments.create(comment_params)
		@user = User.find(current_user.id)
		@user.comments.create(comment_params)
		redirect_to article_path(@article)
	end	


	def destroy
		@article = Article.find(params[:article_id])
		@comment = @article.comments.find(params[:id])
		@comment.destroy
		redirect_to article_path(@article)		
	end	


	private
	def comment_params
		params.require(:comment).merge({:article_id => params[:article_id]}).permit(:article_id,:commenter,:body, :status)
	end	
end
