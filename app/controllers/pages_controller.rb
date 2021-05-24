class PagesController < ApplicationController
  def index
    @jobs = Job.all
    @jobs = @jobs.sample(3)
  end
end
