class Api::V1::Users::ReportsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @reports = @user.reports
    render json: @reports
  end


end
