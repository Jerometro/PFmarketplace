class LaptopsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_laptop, only: [:destroy, :show]

  def index
    @laptops = Laptop.all
  end

  def show
  end

  def new
    @laptop = Laptop.new
  end

  def create
    @laptop = Laptop.new(laptop_params)
    @laptop.user = current_user
    @laptop.save ? (redirect_to laptop_path(@laptop)) : (render :new)
  end

  def destroy
    @laptop.destroy
    redirect_to laptops_path
  end

  private

  def set_laptop
    @laptop = Laptop.find(params[:id])
  end

  def laptop_params
    params.require(:laptop).permit(:address, :price_per_day, :name, :description)
  end
end
