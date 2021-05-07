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

    redirect_to dashboard_path and return if @booking.save

    render :new
  end

  def cancel
    @booking = Booking.find(params[:id])
    @booking.status = "cancelled"
    @booking.save
    redirect_to dashboard_path
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "accepted"
    @booking.save
    render json: { response: render_to_string(partial: "dashboards/booked_laptop.html", locals: { b: @booking }) }
  end

  def deny
    @booking = Booking.find(params[:id])
    @booking.status = "denied"
    @booking.save
    redirect_to dashboard_path
  end

  private

  def set_laptop
    @laptop = Laptop.find(params[:laptop_id])
  end

  def booking_params
    params.require(:booking).permit(:end_date, :start_date)
  end
end
