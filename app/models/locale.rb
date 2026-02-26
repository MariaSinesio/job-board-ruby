class Locale < ApplicationRecord
  validates :locale, presence: true
  validates :city, presence: true
  validates :state, presence: true
end