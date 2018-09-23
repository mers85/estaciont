class Api::V1::Stations::ReportsController < ApplicationController

  def index
    @station = Station.find(params[:station_id])
    @reports = @station.reports
    render json: @reports
  end
end
