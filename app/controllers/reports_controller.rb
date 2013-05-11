class ReportsController < ApplicationController
  def index
    @reports = Report.all
  end

  def new
    @report = Report.new(source: "Mark")

    render "form"
  end

  def create
    @report = Report.new(report_params)

    if @report.save
      redirect_to reports_path and return
    end

    render "form"
  end

  private

  def report_params
    params.require(:report).permit(:source, :status, :weather)
  end
end
