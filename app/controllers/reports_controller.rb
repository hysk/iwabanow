class ReportsController < ApplicationController

  def index
    @reports = Report.all
  end

  def new
    @reports = Report.new
  end

  def create
    @report = Report.new(report_params)
    if @report.save
      redirect_to reports_url
    else
      render 'new'
    end
  end

  private
  
  def report_params
    params.require(:report).permit(:note, :area_code)
  end

end
