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

  def edit
    @new_job = Job.find(params[:id])
  end

  def update
    @new_job = Job.find(params[:id])
    if @new_job.update(job_params)
      redirect_to @new_job
    else
      render action: "edit"
    end
  end

  def destroy; end

  private

  def job_params
    params.require(:job).permit(:position, :place, :contract, :description)
  end
end
