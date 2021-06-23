class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, :address, :price_per_day, :description, presence: true
  validates :price_per_day, numericality: true

  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  scope :by_location, -> address, distance { near(address, distance) }
end
