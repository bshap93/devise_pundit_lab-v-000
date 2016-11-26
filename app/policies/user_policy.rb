class UserPolicy < ApplicationPolicy
  attr_accessor :user, :current_user

  def initialize(user, current_user)
    @user = user
    @current_user = current_user
  end

  def index?
    user.admin?
  end

  def show?
    user.admin? || user.moderator? || user == current_user
  end

  def update?
    user.admin?
  end


  def destroy?
    user != current_user
  end
end
