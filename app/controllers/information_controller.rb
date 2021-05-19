class InformationController < ApplicationController
  def index; end

  def show; end

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
    info = User.find(current_user.id).information
    @info = info[info.length - 1]
  end

  def update
    @user = User.find(params[:id])
    if @user.update(profile_params)
      redirect_to @user
    else
      render action: "edit"
    end
  end

  def destroy; end

  private

  def info_params
    params.require(:information).permit(:available, :employer, :location, :summary, :finished, :started)
  end

end
