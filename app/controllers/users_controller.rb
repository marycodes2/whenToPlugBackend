class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def show
    @user = User.find(params[:id])
    redirect_to users_path(@user)
  end

end
