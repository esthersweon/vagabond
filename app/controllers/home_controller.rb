class HomeController < ApplicationController
  def index
    @cities = City.all
    @posts = Post.all
  end
end
