class ReportsController < ApplicationController

  before_action :set_report, only: %w(show edit update destroy)

  def index
    @reports = Report.all
  end

  def new
    @report = Report.new
  end

  def create
    @report = Report.new(report_params)
    if @report.save
      redirect_to reports_url
    else
      render 'new'
    end
  end

  def show
  end

  def edit 
  end

  def update
    if @report.update(report_params)
      redirect_to report_path(@report)
    else
      render 'edit'
    end
  end

  def destroy
    @report.destroy
    redirect_to reports_path
  end

  private
  
  def report_params
    params.require(:report).permit(:note, :area_code)
  end

  def set_report
    @report = Report.find(params[:id])
  end

end
