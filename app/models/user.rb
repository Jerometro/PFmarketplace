class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, presence: true
  has_many :laptops, dependent: :destroy
  has_many :cars, dependent: :destroy
  has_many :bookings, dependent: :destroy
end
