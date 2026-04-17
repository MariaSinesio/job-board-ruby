class HomeController < ApplicationController
  allow_unauthenticated_access only: [ :index ]
  def index
    @add_recently = Job.includes(:category, :locale).order(created_at: :desc).limit(6)
  end
end
