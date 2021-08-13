class CarsController < ApplicationController

  def index
    @cars = Car.all
    render json: @cars.map{|elem| elem.attributes}
  end
  
  def show
    @car = Car.find(params[:id])
    render json: @car
  end

end
