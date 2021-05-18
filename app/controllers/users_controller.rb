# User controllers page
class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def profile
    @user = User.current_user
  end

  def new; end

  def create; end

  def edit; end

  def update; end

  def destroy; end

  def become_employer
    current_user.add_role :employer
    redirect_to user_path(current_user)
  end
end
