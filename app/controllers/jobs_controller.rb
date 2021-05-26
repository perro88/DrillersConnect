# Jobs Page Controller
class JobsController < ApplicationController
  before_action :authenticate_user!

  # Access all jobs from all users
  def index
    @users = User.all
  end

  # Find and shows the job that matches the id parameters
  def show
    @job = Job.find(params[:id])
    # Find and show users that applied for that job
    @job_user_records = JobUser.where(job_id: params[:id])
  end

  # Start a new job form
  def new
    @new_job = Job.new
    # Authorizes the correct user to access new job page
    authorize @new_job
  end

  # Creates and saves the new job to the users id
  def create
    @new_job = Job.new(job_params)
    @new_job.user_id = current_user.id
    authorize @new_job
    if @new_job.save
      redirect_to jobs_path
      # Otherwise render the new form again
    else
      render action: "new"
    end
  end

  # Start a edit job form
  def edit
    @new_job = Job.find(params[:id])
    # Authorizes the correct user to access edit job page
    authorize @new_job
  end

  # Updates and saves the job to the job id and users id
  def update
    @new_job = Job.find(params[:id])
    authorize @new_job
    if @new_job.update(job_params)
      redirect_to @new_job
      # Otherwise render the edit form again
    else
      render action: "edit"
    end
  end

  # Removes the job from the database
  def destroy
    @job = Job.destroy(params[:id])
    redirect_to jobs_path
  end

  # Finds the user from the JobUser model
  # Refers to job that user applied for
  # Action removes applicant/user from JobUser database
  def destroy_applicant
    @job_user = JobUser.find(params[:id])
    @job = @job_user.job
    @job_user.delete
    redirect_to job_path(@job)
  end

  # Lets Users apply for jobs by adding their id to a join table
  # Gets the job id of the current job
  # Saves the Job id and User id to the JobUser join table
  def apply_for_job
    @job_user = JobUser.new
    @job_user.user_id = current_user.id
    @job_user.job_id = params[:id]
    @job_user.save
    # After successful save shows flash confirmation on following page
    successfully_applied_for_job
    redirect_to jobs_path
  end

  private

  # Lists Job parameters to be passed on
  def job_params
    params.require(:job).permit(:position, :place, :contract, :description)
  end

  # Flash alert that is used in the apply_for _job action
  def successfully_applied_for_job
    flash[:alert] = "You have applied for the job :)"
  end
end
