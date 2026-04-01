class Job < ApplicationRecord
  belongs_to :category # Singular
  belongs_to :locale
  validates :name, presence: true
  validates :description, presence: true

  def self.search(search)
    if search
    search_job = Job.find_by(search: job)
    if search_job
      self.where(job_id: search_job)
    else
      @jobs = Job.all
    end
    end
  end
end
