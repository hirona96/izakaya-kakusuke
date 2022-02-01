class CommentsController < ApplicationController

  def index
    @comments = Comment.all.order('created_at DESC')
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to action: :index
    else
      render :new
    end
  end


  private

  def comment_params
    params.require(:comment).permit(:evaluation_id, :comment, :image) 
  end


end
