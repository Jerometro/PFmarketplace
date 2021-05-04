class DashboardsController < ApplicationController
  def show
    @laptops = Laptop.where(user: current_user)
  end
end
