class NearestStation < ApplicationRecord
  belongs_to :rental_property, inverse_of: :nearest_stations

  validates :walking_minutes, numericality: true
end
