class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_car, only: [:destroy, :show, :edit, :update]

  def index
      if params[:query].present?
        sql_query = "address ILIKE :query"
        # sql_query = "name ILIKE :query OR description ILIKE :query OR address ILIKE :query"
        @cars = Car.where(sql_query, query: "%#{params[:query]}%")
      else
        @cars = Car.all.order(created_at: :desc)
      end

    # the `geocoded` scope filters only cars with coordinates (latitude & longitude)
    @markers = @cars.geocoded.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { car: car }),
        image_url: helpers.asset_url('map-marker.png')
      }
    end
  end

  def show
    @booking = Booking.new
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    @car.save ? (redirect_to dashboard_path) : (render :new)
  end

  def destroy
    @car.destroy
    redirect_to dashboard_path
  end

  def edit
  end

  def update
    if @car.update(car_params)
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:address, :price_per_day, :name, :description, :photo)
  end
end
