class CarsController < ApplicationController

  skip_before_action :verify_authenticity_token 


  def create

      @cars = Car.create(car_name: params[:car_name], price: params[:price], 
                        time_duration: params[:time_duration])

      render json: @cars.attributes 

  end
 

  def index

    @cars = Car.all
    render json: @cars.map{|elem| elem.attributes}

  end

  def bookings

    @bookings = Car.find(params[:id]).bookings
    render json: @bookings

  end

end
