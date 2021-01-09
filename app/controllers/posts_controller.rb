class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :post_find, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.order(id: :DESC)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
    redirect_to root_path if current_user.id != @post.user.id or @post.order != nil
  end

  def update
    if @post.update(post_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if current_user.id == @post.user.id
      @post.destroy
    end
      redirect_to root_path
  end

  private

  def post_find
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:name, :category_id, :keyword_id, :explanation, :image).merge(user_id: current_user.id)
  end
end
