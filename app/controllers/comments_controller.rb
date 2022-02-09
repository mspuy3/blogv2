class CommentsController < ApplicationController
   before_action :get_article

   def index
      @comment = @article.comments
   end

   def new
      @comment = @article.comments.build
   end
   
   def create
      @comment = @article.comments.build(comment_params)
      
      if @comment.save
        redirect_to @article
      else
         render :new
      end
  end

  def destroy
      @comment = @article.comments.find(params[:id])
      @comment.destroy
      redirect_to @article
  end

  private
  def get_article
   @article = Article.find(params[:article_id])
  end

  def comment_params
   params.require(:comment).permit(:name, :comment_body, :article_id)
  end

end
