class DashboardController < ApplicationController

  def show
    @my_bookings = Booking.where(user: current_user)
    unless current_user
      redirect_to root_path
    end
  end
end
