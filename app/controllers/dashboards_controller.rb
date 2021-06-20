class DashboardsController < ApplicationController
  def show
    @cars = Car.where(user: current_user).order(created_at: :desc)
    @bookings = Booking.where(user: current_user).order(created_at: :desc)
    @booked = Booking.where(car: current_user.cars).order(created_at: :desc)
  end
end
