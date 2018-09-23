class Api::V1::AlertsController < ApplicationController

  def index
    @station = Station.find(params[:station_id])
    screenshots_ids = @station.cameras.map {|cam| cam.screenshots }.flatten.map(&:id)
    @alerts = Alert.where(screenshot_id: screenshots_ids)
  end

  def show
    @alerts = Alert.find(params[:id])
  end

end
