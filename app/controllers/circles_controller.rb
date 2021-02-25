class CirclesController < ApplicationController
  before_action :circle_find, only: :show

  def index
    @circles = Circle.all
  end

  def new
    @circle = Circle.new
  end

  def create
    @circle = Circle.create(circle_params)
    if @circle.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  private

  def circle_find
    @circle = Circle.find(params[:id])
  end

  def circle_params
    params.require(:circle).permit(:name, :category_id, :keyword_id, :explanation, :image).merge(user_id: current_user.id)
  end
end
