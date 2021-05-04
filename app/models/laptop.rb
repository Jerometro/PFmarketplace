class Laptop < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, :address, :price_per_day, :description, presence: true
  validates :price_per_day, numericality: true

  has_one_attached :photo
end
