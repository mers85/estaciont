class Api::V1::Stations::WorkersController < ApplicationController
  before_action :set_station

  def index
    @workers = @station.workers
    render json: @workers
  end

  private

  def set_station
    @station = Station.find(params[:station_id])
  end

end
