class UsersController < ApplicationController
  before_action :set_user, only: [:create, :update, :destroy, :show]
  def new
    @user = User.new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
  end

  private
  def user_params
    params.require(:user).permit(:email, :name, :password, :role)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
