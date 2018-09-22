class Api::V1::ScreenshotsController < ApplicationController

  def index
    @screenshots = Screenshot.all
    render json: @screenshots
  end

end
