class CarsController < ApplicationController
  before_action :authorized
  def index
      @cars = current_user.cars
  end

  def show
    @car = Car.find(params[:id])
  end

  def all_red
    cars = Car.all 
    @red_cars = cars.select do |car|
      car.color == "red"
    end
    @red_cars
  end


  def new
    @car = Car.new
    @owners = Owner.all
  end

  def create
    byebug
    @car = Car.new(car_params)
    redirect_to "/cars/#{@car.id}" # car_path(@car)
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    @car.update(car_params)
    redirect_to car_path(@car)
  end

  def destroy
  end

  private

  def car_params
    params.require(:car).permit(:name, :color, :year, :make, :model, :owner_id)
  end
end
