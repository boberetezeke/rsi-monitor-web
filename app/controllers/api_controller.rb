class ApiController < ApplicationController
  respond_to :json

  before_action       :verify_api_token
  skip_before_action  :verify_authenticity_token

  def verify_api_token
    if params[:api_token] != ENV["API_TOKEN"]
      render json: {}, status: 401
    end
  end
end