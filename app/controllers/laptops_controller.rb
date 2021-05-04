class LaptopsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_laptop, only: [:destroy, :show, :edit, :update]

  def index
    @laptops = Laptop.all
  end

  def show
    @laptop = Laptop.find(params[:id])
  end

  def new
    @laptop = Laptop.new
  end

  def create
    @laptop = Laptop.new(laptop_params)
    @laptop.user = current_user
    @laptop.save ? (redirect_to dashboard_path) : (render :new)
  end

  def destroy
    @laptop.destroy
    redirect_to dashboard_path
  end

  def edit
  end

  def update
    if @laptop.update(laptop_params)
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  private

  def set_laptop
    @laptop = Laptop.find(params[:id])
  end

  def laptop_params
    params.require(:laptop).permit(:address, :price_per_day, :name, :description)
  end
end
