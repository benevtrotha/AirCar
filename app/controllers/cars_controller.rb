class CarsController < ApplicationController
  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to car_path(@car)
    else
      render "new"
    end
  end

  private

  def car_params
    params.require(:car).permit(:car_type, :price, :description, :location, :brand)
  end
end
