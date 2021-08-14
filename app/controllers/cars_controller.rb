class CarsController < ApplicationController

  skip_before_action :verify_authenticity_token  

  def list_cars

    @cars = Car.all
    render json: @cars.map{|elem| elem.attributes}

  end

  def bookings

    @car = Car.find(params[:id]).bookings
    render json: @car

  end

end
