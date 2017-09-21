class UsersController < ApplicationController
  before_action :require_login, only: [:update]

  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to login_path
  end
  
  def show
    if params[:id]
      @user = User.find_by_id(params[:id])
    elsif current_user
      @user = User.find_by_id(current_user.id)
    else
      redirect_to root_path
    end
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
