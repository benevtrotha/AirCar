class DashboardController < ApplicationController

  # def index
  #   @bookings = current_user.bookings
  # end

  def show
    @my_bookings = Booking.where(user: current_user)
    # @my_cars = Car.
    unless current_user
      redirect_to root_path
    end
  end
end
