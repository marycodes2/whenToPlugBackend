class HoursController < ApplicationController
  def index
    render json: Hour.all
  end

  private

  def hour_params
    params.require(:hour).permit(:period, :efficiency)
  end
end
