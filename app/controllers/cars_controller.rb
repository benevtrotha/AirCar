class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save
      redirect_to cars_path, notice: 'Car was successfully created.'
    else
      render :new
    end
  end

  private

  def car_params
    params.require(:car).permit(:car_type, :price, :description, :location, :brand)
  end
end
