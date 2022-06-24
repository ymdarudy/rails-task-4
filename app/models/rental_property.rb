class RentalProperty < ApplicationRecord
  has_many :nearest_stations, dependent: :destroy, inverse_of: :rental_property
  accepts_nested_attributes_for :nearest_stations, allow_destroy: true, reject_if: :all_blank

  validates :name, presence: true
  validates :rent, presence: true, numericality: true
  validates :address, presence: true
  validates :age, presence: true, numericality: true
end
