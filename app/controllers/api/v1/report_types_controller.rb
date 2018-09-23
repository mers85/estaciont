class Api::V1::ReportTypesController < ApplicationController

  def index
    @report_types = ReportType.all
    render json: @report_types
  end

  def show
    @report_type = ReportType.find(params[:id])
  end

end
