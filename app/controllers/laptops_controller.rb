class LaptopsController < ApplicationController
  def show
    @laptop = Laptop.find(params[:id])
  end
end
