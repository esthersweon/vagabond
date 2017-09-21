class CitiesController < ApplicationController
  def index
    @cities = City.all
  end
  
  def create
  end

  def show
    @city = City.find(params[:id])
    @post = Post.new
  end
end
