# Jobs Page Controller
class JobsController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def new; end

  def create; end

  def edit; end

  def update; end

  def destroy; end
end
