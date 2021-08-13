class UsersController < ApplicationController



  def index
    @users = User.all
    render json: @users.map{|elem| elem.attributes}
  end


def create

  @user = User.create(name: params[:name], age: params[:age])
  redirect_to users_path(@user)

end



end
