class NearestStation < ApplicationRecord
  belongs_to :rental_property

  validates :line, presence: true
  validates :name, presence: true
  validates :walking_minutes, presence: true, numericality: true
end
