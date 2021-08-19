class BookingsController < ApplicationController

   skip_before_action :verify_authenticity_token 

   
     


   def create

      @bookings = Booking.find_by(car_id: params[:car_id], date: params[:date])

     
      if @bookings

         raise "car already booked"

      else

         @booking = Booking.create(user_id: params[:user_id], 
               car_id: params[:car_id], date: params[:date])

      end

      render json: @booking.attributes


  end



end



