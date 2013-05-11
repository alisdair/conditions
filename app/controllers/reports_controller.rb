class ReportsController < ApplicationController
  before_filter :validate_source

  def index
    @reports = Report.all(order: "created_at DESC")
  end

  def new
    @report = Report.new(source: @source)

    render "form"
  end

  def create
    @report = Report.new(source: @source)
    @report.attributes = report_params

    if @report.save
      redirect_to reports_path and return
    end

    render "form"
  end

  private

  def report_params
    params.require(:report).permit(:status, :weather)
  end

  def validate_source
    @source = Source.keyed(params[:source_id])
  end
end
