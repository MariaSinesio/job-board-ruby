class JobController < ApplicationController
  def index
   render json: Job.all, status: :ok
  end
  def show
    Job.find(params[:id])
  end
end