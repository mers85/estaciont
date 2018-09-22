class Api::V1::AlertsController < ApplicationController

  def index
    @station = Station.find(params[:station_id])
    @alerts = @station.alerts.all
    render json: @alerts
  end

  def show
    @alerts = Alert.find(params[:id])
  end

end
