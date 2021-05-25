# User controllers page
class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
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

  def destroy
    @delete_user = User.destroy(params[:id])
    authorize @delete_user
    redirect_to users_path
  end

  def become_employer
    current_user.add_role :employer
    redirect_to new_job_path
  end

  def become_user
    current_user.remove_role :employer
    redirect_to information_index_path
  end

  private

  def user_params
    params.require(:user).permit(:avatar)
  end
end
