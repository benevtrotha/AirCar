class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @car = Car.find(params[:car_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @car = Car.find(params[:car_id])
    @booking.car = @car
    @booking.user = current_user
    if @booking.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(start_on: params[:booking][:start_on], end_on: params[:booking][:end_on])
    redirect_to cars_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_on, :end_on, :car_id)
  end
end
