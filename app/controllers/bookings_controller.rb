class BookingsController < ApplicationController

  skip_before_action :verify_authenticity_token  



  def create

    @booking = Booking.create(user_id: params[:user_id], car_id: params[:car_id])

    render json: @booking.attributes 

  end




end
