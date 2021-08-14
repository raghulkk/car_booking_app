class CarsController < ApplicationController

  skip_before_action :verify_authenticity_token  

  def index

    @cars = Car.all
    render json: @cars.map{|elem| elem.attributes}

  end

  def show

    @car = Car.find(params[:id]).bookings
    render json: @car

  end

end
