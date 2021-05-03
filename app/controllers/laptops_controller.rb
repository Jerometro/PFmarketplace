class LaptopsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @laptops = Laptop.all
  end

  def show
    @laptop = Laptop.find(params[:id])
  end
end
