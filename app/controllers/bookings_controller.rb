class BookingsController < ApplicationController
  before_action :set_laptop, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  SECONDS_IN_MINUTES = 60
  SECONDS_IN_HOURS = SECONDS_IN_MINUTES * 60
  SECONDS_IN_DAYS = SECONDS_IN_HOURS * 24

  def create
    @booking = Booking.new(booking_params)
    @booking.laptop = @laptop
    days = (@booking.end_date - @booking.start_date).to_i / SECONDS_IN_DAYS + 1
    @booking.price = @laptop.price_per_day * days
    @booking.user = current_user

    redirect_to laptop_path(@laptop) and return if @booking.save

    render :new
  end

  private

  def set_laptop
    @laptop = Laptop.find(params[:laptop_id])
  end

  def booking_params
    params.require(:booking).permit(:end_date, :start_date)
  end
end
