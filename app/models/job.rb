class Job < ApplicationRecord
  belongs_to :category # Singular
  belongs_to :locale
  validates :name, presence: true
  validates :description, presence: true
end
