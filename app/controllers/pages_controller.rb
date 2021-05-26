# Is the root/home/landing page for the application
class PagesController < ApplicationController

  # Shows a sample of three jobs that are currently available
  def index
    @jobs = Job.all
    @jobs = @jobs.sample(3)
  end
end
