# Jobs Page Controller
class JobsController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @job = Job.find(params[:id])
    @job_user_records = JobUser.where(job_id: params[:id])
  end

  def new
    @new_job = Job.new
    authorize @new_job
  end

  def create
    @new_job = Job.new(job_params)
    @new_job.user_id = current_user.id
    authorize @new_job
    if @new_job.save
      redirect_to jobs_path
    else
      render action: "new"
    end
  end

  def edit
    @new_job = Job.find(params[:id])
    authorize @new_job
  end

  def update
    @new_job = Job.find(params[:id])
    authorize @new_job
    if @new_job.update(job_params)
      redirect_to @new_job
    else
      render action: "edit"
    end
  end

  def destroy
    @job = Job.destroy(params[:id])
    redirect_to jobs_path
  end

  def destroy_applicant
    @job_user = JobUser.find(params[:id])
    # referring back to original job
    @job = @job_user.job
    @job_user.delete

    redirect_to job_path(@job)
  end

  def apply_for_job
    @job_user = JobUser.new
    @job_user.user_id = current_user.id
    @job_user.job_id = params[:id]
    @job_user.save!
    successfully_applied_for_job
    redirect_to jobs_path
  end
  private

  def job_params
    params.require(:job).permit(:position, :place, :contract, :description)
  end

  def successfully_applied_for_job
    flash[:alert] = "You have applied for the job :)"
  end
end
