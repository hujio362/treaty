class CirclesController < ApplicationController
  def index
    @circle = Circle.all
  end
end
