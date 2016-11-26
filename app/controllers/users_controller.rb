class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end

  # private
  # def user_params
  #   params.require(:user).permit(:email, :name, :password, :role)
  # end
  #
  # def set_user
  #   @user = User.find(params[:id])
  # end
end
