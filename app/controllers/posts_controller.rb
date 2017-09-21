class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @city = City.find(params[:city_id])

    if @post.save
      redirect_to @city
    else
      flash[:error] = "Post was not saved"
    end
  end

  def show
    @post = Post.find(params[:post_id])
    @user = User.find(@post.user.id)
    @city = City.find(@post.city.id)
  end

  private

  def post_params
    params.require(:post).permit(:title, :author, :content, :user_id, :city_id)
  end
end
