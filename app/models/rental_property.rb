class RentalProperty < ApplicationRecord
  has_many :nearest_stations
  accepts_nested_attributes_for :nearest_stations, reject_if: lambda { |attributes| attributes[:name].blank? }

  validates :name, presence: true
  validates :rent, presence: true, numericality: true
  validates :address, presence: true
  validates :age, presence: true, numericality: true
end
