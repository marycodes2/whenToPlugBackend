class VisitorRequestsController < ApplicationController

  def create
    @visitor_request = VisitorRequest.new(visitor_request_params)
    @visitor_request.save
  end

  def index
    render json: VisitorRequest.all
  end

  private

  def visitor_request_params
    params.require(:visitor_request).permit(:appliance_id, :user_id, :duration, hour_ids: [])
  end
end
