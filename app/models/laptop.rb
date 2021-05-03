class Laptop < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :address, :price_per_day, :description, presence: true
  validates :price_per_day, numericality: true
end
