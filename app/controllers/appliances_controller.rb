class AppliancesController < ApplicationController

  def index
    render json: Appliance.all
  end

  private

  def appliance_params
    params.require(:appliance).permit(:name, :load, :duration, :image)
  end

end
