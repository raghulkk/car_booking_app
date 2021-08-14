class UsersController < ApplicationController

  skip_before_action :verify_authenticity_token  

  def index

    @users = User.all
    render json: @users.map{|elem| elem.attributes}

  end

  def bookings

    @user = User.find(params[:id]).bookings
    render json: @user

  end

  def booked_cars

    @user = User.find(params[:id]).cars
    render json: @user

  end

  def create
     @user = User.create(name: params[:name], age: params[:age], 
                        email: params[:email], address: params[:address], 
                        mobile_no: params[:mobile_no])
      render json: @user.attributes

  end

end
