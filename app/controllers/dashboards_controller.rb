class DashboardsController < ApplicationController
  def show
    @laptops = Laptop.where(user: current_user)
    @bookings = Booking.where(user: current_user)
    @booked = Booking.where(laptop: current_user.laptops)
  end
end
