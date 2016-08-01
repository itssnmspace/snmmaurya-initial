class CommentsController < ApplicationController
  before_action :set_blog

  def new

  end

  def create
    @comment = Comment.new comments_params
    @comment.blog_id = @blog.id
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to blog_path(@blog)
    else
      render :new
    end  
  end

  private
    def comments_params
      params.require(:comment).permit(:title, :description, :user_id, :blog_id)
    end

    def set_blog
      @blog = Blog.find params[:blog_id]
    end
end