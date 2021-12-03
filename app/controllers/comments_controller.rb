class CommentsController < ApplicationController
  before_action :set_blog, only: [:create, :destroy]

  def create
    @comment = @blog.comment.create(comment_params)
    redirect_to blog_path(@blog)
  end

  def destroy
    @comment = @blog.comment.find(params[:id])
    @comment.destroy
    redirect_to
  end

  private

  def set_blog
    @blog = Blog.find(params[:blog_id])
  end

  def comment_params
    params.require(:comment).permit(:name, :content, :blog_id)
  end
end
