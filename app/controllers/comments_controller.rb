class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      render :index
    else
      render :index
    end
  end


  private

  def(comment_params)
    params.require(:comment).permit(:evaluation_id, :comment, :image) 
  end


end
