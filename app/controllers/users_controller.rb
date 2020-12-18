class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_user, only: [:show, :edit]
  def index
    @users = User.all
  end

  def show
  end

  def edit
  end
  
  def update
    if current_user.update(user_params)
      redirect_to user_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email, :profile, :profile_image)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
