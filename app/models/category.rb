class Category < ApplicationRecord
  has_many :jobs # Sempre plural
  validates :label, presence: true
end
