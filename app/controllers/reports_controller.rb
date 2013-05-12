class ReportsController < ApplicationController
  before_filter :load_source, except: :index

  def index
    @reports = Report.all(order: "created_at DESC")
  end

  def show
    @report = Report.find(params[:id])
  end

  def new
    @report = Report.new(status: "Open", weather: "Fair")

    render "form"
  end

  def create
    @report = Report.new(source: @source)
    @report.attributes = report_params

    if @report.save
      redirect_to source_report_path(@source, @report) and return
    end

    render "form"
  end

  private

  def report_params
    params.require(:report).permit(:status, :weather)
  end

  def load_source
    @source = Source.keyed(params[:source_id])
  end
end
