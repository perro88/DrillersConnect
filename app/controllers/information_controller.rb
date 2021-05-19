class InformationController < ApplicationController
  def index; end

  def show; end

  def new
    @info = Information.new
  end

  def create
    @info = Information.new(profile_params)
    if @info.save
      redirect_to @info
    else
      render action: "new"
    end
  end

  def edit
    info = User.find(current_user.id).information
    @user = info[info.length - 1]
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

  def profile_params
    params.require(:information).permit(:available, :employer, :location, :summary, :finished, :started)
  end

end
