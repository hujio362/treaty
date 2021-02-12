class HomesController < ApplicationController
  def index
    @posts = Post.order(id: :DESC)
    @circles = Circle.all
  end
end
