class TopiccommentsController < ApplicationController
  before_action :set_tpcc, only: [:edit, :show]
 
  def create
    @topiccomment = Topiccomment.create(tpcc_params)
  end

  def show
  end

  def new
    @topiccomment = Topiccomment.new
  end

  def edit
  end


  private

  def tpcc_params
    params.require(:topiccomment).permit(:image, :text).merge(user_id: current_user.id)
  end

  def set_tpcc
    @topiccomment = Topiccomment.find(params[:id])
  end


end
