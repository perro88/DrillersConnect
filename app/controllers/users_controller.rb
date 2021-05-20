# User controllers page
class UsersController < ApplicationController

  def index
    @users = User.all
    # @users = User.information.gets_current_information(user_id.id)
  end

  def show
    @user = User.find(params[:id])
    @user_info = Information.gets_current_information(params[:id])
  end

  def new; end

  def create; end

  def edit
    @user = User.current_user
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
    else
      render action: "edit"
    end
  end

  def destroy; end

  def become_employer
    current_user.add_role :employer
    redirect_to user_path(current_user)
  end

  private

  def user_params
    params.require(:user).permit(:avatar)
  end
end
