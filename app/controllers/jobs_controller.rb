# Jobs Page Controller
class JobsController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @new_job = Job.new
  end

  def create
    @new_job = Job.new(job_params)
    @new_job.user_id = current_user.id
    if @new_job.save
      redirect_to jobs_path
    else
      render action: "new"
    end
  end

  def edit; end

  def update; end

  def destroy; end

  private

  def job_params
    params.require(:job).permit(:position, :place, :contract, :description)
  end
end
