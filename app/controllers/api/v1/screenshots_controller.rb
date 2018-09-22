class Api::V1::ScreenshotsController < ApplicationController

  def index
    @screenshots = Screenshot.all
    render :index
  end

  def create
    @screenshots = GetCamsPicturesService.new.perform
    render :create
  end

  def create
    render json: "Hola"
  end

end
