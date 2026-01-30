class Job < ApplicationRecord
  belongs_to :category # Singular
  validates :name, presence: true
  validates :description, presence: true
end
