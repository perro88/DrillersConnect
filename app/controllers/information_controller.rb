# Information controller which refers to the profile page in the html
class InformationController < ApplicationController

  # Shows current users most recent Profile information
  # Gives current user access to  their previous information through a link
  def index
    @user = current_user
    @current_information = Information.gets_current_information(current_user.id)
    @past_information = Information.gets_previous_information(current_user.id)
  end

  # Finds and shows Profile Information that has that id parameters
  def show
    @info = Information.find(params[:id])
  end

  # Start a new information form
  def new
    @info = Information.new
  end

  # Creates and saves the new information to the users id
  def create
    @info = Information.new(info_params)
    @info.user_id = current_user.id
    if @info.save
      redirect_to @info

      # Otherwise render the new form again
    else
      render action: "new"
    end
  end

  # Start a edit information form
  def edit
    @info = Information.gets_current_information(current_user.id)
  end

  # Updates and saves the information to the users id
  def update
    @info = Information.gets_current_information(current_user.id)
    if @info.update!(info_params)
      redirect_to information_index_url

      # Otherwise render the edit form again
    else
      render action: "edit"
    end
  end

  # Removes the information from the database
  def destroy
    @delete_info = Information.destroy(params[:id])
    # Authorizes the correct user to access the destroy action
    authorize @delete_info
    redirect_to information_path
  end

  private

  # Lists information parameters to be passed on
  def info_params
    params.require(:information).permit(:available, :employer, :location, :summary, :finished, :started)
  end
end
