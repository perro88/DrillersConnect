# User controllers page
class UsersController < ApplicationController

  # Devise to authenticate user/login before operation
  before_action :authenticate_user!

  # Gives access to all users to the users index page
  def index
    @users = User.all
  end

  # Shows the user that matches the id parameters
  # Shows the most current information of the user that matches the id parameters
  def show
    @user = User.find(params[:id])
    @user_info = Information.gets_current_information(params[:id])
  end

  # Handled by Devise
  def new; end

  # Handled by Devise
  def create; end

  # Gets current users keys/values
  def edit
    @user = User.current_user
  end

  # Finds the users id and updates their parameters
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
    else
      render action: "edit"
    end
  end

  # Removes user from User database
  def destroy
    @delete_user = User.destroy(params[:id])

    # Authorizes the correct user to access the destroy action
    authorize @delete_user
    redirect_to users_path
  end

  # Gives users ability to change roles to employer
  def become_employer
    current_user.add_role :employer
    redirect_to new_job_path
  end

  # Gives employers ability to change roles to user
  def become_user
    current_user.remove_role :employer
    redirect_to information_index_path
  end

  private

  # Adds a avatar/profile pic to the params
  def user_params
    params.require(:user).permit(:avatar)
  end
end
