class CommentsController < ApplicationController
  before_action :set_tpcc, only[:edit, :show]
 
  def create
    @comment = comment.create(comment_params)
  end

  def show
  end

  def new
    @comment = comment.new
  end

  def edit
  end


  private

  def comment_params
    params.require(:comment).permit(:image, :text).merge(user_id: current_user.id)
  end

  def set_comment
    @comment = comment.find(params[:id])
  end
end
