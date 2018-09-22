class Api::V1::CamerasController < ApplicationController

  def index
    @cameras = Camera.all
    render json: @cameras
  end

end
