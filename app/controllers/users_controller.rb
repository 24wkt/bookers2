class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @post_image = @user.post_image.page(params[:page]).reverse_order
  end

  def edit
  end

  def update
  end

  private
  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

end
