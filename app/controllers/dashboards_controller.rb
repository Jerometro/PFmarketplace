class DashboardsController < ApplicationController
  def show
    @laptops = Laptop.where(user: current_user).order(created_at: :desc)
    @bookings = Booking.where(user: current_user).order(created_at: :desc)
    @booked = Booking.where(laptop: current_user.laptops).order(created_at: :desc)
  end
end
