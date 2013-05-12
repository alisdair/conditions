class CurrentController < ApplicationController
  layout "iframe"

  def show
    @report = Report.order("created_at DESC").first
    response.headers["X-Frame-Options"] = "ALLOWALL"
  end
end