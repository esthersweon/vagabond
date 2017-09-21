class CitiesController < ApplicationController
  def new
    @city = City.new
  end
  
  def create
    @city = City.new(city_params)

    if @city.save
      redirect_to @city
    else
      flash[:error] = "City was not saved"
    end
  end

  def show
    @city = City.find(params[:id])
    @post = Post.new
  end

  def edit
    @city = City.find(params[:id])
  end

  def update
    City.find(params[:id]).update(city_params)
    redirect_to city_path(params[:id])
  end

  private

  def city_params
    params.require(:city).permit(:name, :description, :photo)
  end
end
