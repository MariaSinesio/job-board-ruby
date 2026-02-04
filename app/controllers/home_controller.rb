class HomeController < ApplicationController
  def index
    @add_recently = Job.includes(:category).order(created_at: :desc).limit(6)
  end
end
