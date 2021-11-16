class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(strong_params)
    @car = Car.find(params[:car_id])
    @booking.car = @car
    @booking.user = current_user
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking.update(start_on: params[:booking][:start_on], end_on: params[:booking][:end_on])
    redirect_to car_path(@car)
  end

  private

  def strong_params
    params.require(:booking).permit(:start_on, :end_on)
  end
end
