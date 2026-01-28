class Job < ApplicationRecord
  belongs_to :category # Singular
  validates :name, presence: true, maximum: 150
  validates :description, presence: true
end
