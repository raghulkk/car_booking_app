class UsersController < ApplicationController



  def index
    @users = User.all
    render json: @users.map{|elem| elem.attributes}
  end


def create

  @user = User.create(name: params[:name], age: params[:age], 
                      email: params[:email], address: params[:address], 
                      mobile_no: params[:mobile_no])
  
end



end
