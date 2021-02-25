class HomesController < ApplicationController
  def index
    @posts = Post.order(id: :DESC)
    @circles = Circle.order(id: :DESC)
  end
end
