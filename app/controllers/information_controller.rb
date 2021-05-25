# Information controller which refers to the profile page in the html
class InformationController < ApplicationController
  def index
    @user = current_user
    @current_information = Information.gets_current_information(current_user.id)
    @past_information = Information.gets_previous_information(current_user.id)
  end

  def show
    @info = Information.find(params[:id])
  end

  def new
    @info = Information.new
  end

  def create
    @info = Information.new(info_params)
    @info.user_id = current_user.id
    if @info.save
      redirect_to @info
    else
      render action: "new"
    end
  end

  def edit
    @info = Information.gets_current_information(current_user.id)
  end

  def update
    @info = Information.gets_current_information(current_user.id)
    if @info.update!(info_params)
      redirect_to information_index_url
    else
      render action: "edit"
    end
  end

  def destroy
    @delete_info = Information.destroy(params[:id])
    authorize @delete_info
    redirect_to information_path
  end

  private

  def info_params
    params.require(:information).permit(:available, :employer, :location, :summary, :finished, :started)
  end
end
