class Locale < ApplicationRecord
  has_many :jobs
  validates :locale, presence: true
  validates :city, presence: true
  validates :state, presence: true
end
